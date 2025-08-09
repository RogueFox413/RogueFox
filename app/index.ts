const { createClient } = require('@supabase/supabase-js')
const axios = require('axios')

class HealthCheck {
  constructor(supabaseUrl, supabaseAnonKey) {
    this.supabaseClient = createClient(supabaseUrl, supabaseAnonKey)
    this.edgeFunctionUrl = `${supabaseUrl}/functions/v1/health-check`
  }

  // Method 1: Direct Edge Function Call
  async checkEdgeFunctionHealth() {
    try {
      const response = await axios.post(
        this.edgeFunctionUrl, 
        {}, 
        {
          headers: {
            'Authorization': `Bearer ${this.supabaseClient.auth.getSession().session?.access_token}`,
            'Content-Type': 'application/json'
          }
        }
      )
      return {
        status: 'success',
        data: response.data,
        timestamp: new Date().toISOString()
      }
    } catch (error) {
      return {
        status: 'error',
        message: error.response?.data || error.message,
        timestamp: new Date().toISOString()
      }
    }
  }

  // Method 2: Database Connection Health Check
  async checkDatabaseHealth() {
    try {
      const { data, error } = await this.supabaseClient
        .from('pg_stat_database')
        .select('*')
        .limit(1)

      if (error) throw error

      return {
        status: 'success',
        message: 'Database connection successful',
        timestamp: new Date().toISOString()
      }
    } catch (error) {
      return {
        status: 'error',
        message: error.message,
        timestamp: new Date().toISOString()
      }
    }
  }

  // Method 3: Comprehensive Health Check
  async performFullHealthCheck() {
    const [edgeFunctionHealth, databaseHealth] = await Promise.allSettled([
      this.checkEdgeFunctionHealth(),
      this.checkDatabaseHealth()
    ])

    return {
      timestamp: new Date().toISOString(),
      services: {
        edgeFunction: edgeFunctionHealth.status === 'fulfilled' 
          ? edgeFunctionHealth.value 
          : { status: 'error', message: edgeFunctionHealth.reason?.message },
        database: databaseHealth.status === 'fulfilled'
          ? databaseHealth.value
          : { status: 'error', message: databaseHealth.reason?.message }
      }
    }
  }
}

// Example usage
async function runHealthCheck() {
  const supabaseUrl = process.env.SUPABASE_URL
  const supabaseAnonKey = process.env.SUPABASE_ANON_KEY

  if (!supabaseUrl || !supabaseAnonKey) {
    console.error('Missing Supabase configuration')
    process.exit(1)
  }

  const healthChecker = new HealthCheck(supabaseUrl, supabaseAnonKey)

  try {
    // Perform full health check
    const healthCheckResult = await healthChecker.performFullHealthCheck()
    console.log(JSON.stringify(healthCheckResult, null, 2))

    // Optional: Throw error if any service is down
    const isHealthy = Object.values(healthCheckResult.services)
      .every(service => service.status === 'success')

    if (!isHealthy) {
      console.error('Health check failed')
      process.exit(1)
    }
  } catch (error) {
    console.error('Unexpected health check error:', error)
    process.exit(1)
  }
}

// Run health check
runHealthCheck()
