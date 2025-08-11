
/**
 * Client
**/

import * as runtime from '@prisma/client/runtime/library.js';
import $Types = runtime.Types // general types
import $Public = runtime.Types.Public
import $Utils = runtime.Types.Utils
import $Extensions = runtime.Types.Extensions
import $Result = runtime.Types.Result

export type PrismaPromise<T> = $Public.PrismaPromise<T>


/**
 * Model User
 * 
 */
export type User = $Result.DefaultSelection<Prisma.$UserPayload>
/**
 * Model ConsciousnessProfile
 * 
 */
export type ConsciousnessProfile = $Result.DefaultSelection<Prisma.$ConsciousnessProfilePayload>
/**
 * Model BucketDrop
 * 
 */
export type BucketDrop = $Result.DefaultSelection<Prisma.$BucketDropPayload>
/**
 * Model TapestryNode
 * 
 */
export type TapestryNode = $Result.DefaultSelection<Prisma.$TapestryNodePayload>
/**
 * Model TribunalSession
 * 
 */
export type TribunalSession = $Result.DefaultSelection<Prisma.$TribunalSessionPayload>
/**
 * Model MusicalDnaAnalysis
 * 
 */
export type MusicalDnaAnalysis = $Result.DefaultSelection<Prisma.$MusicalDnaAnalysisPayload>
/**
 * Model ConsciousnessMetric
 * 
 */
export type ConsciousnessMetric = $Result.DefaultSelection<Prisma.$ConsciousnessMetricPayload>
/**
 * Model EmpowermentEvent
 * 
 */
export type EmpowermentEvent = $Result.DefaultSelection<Prisma.$EmpowermentEventPayload>
/**
 * Model Subscription
 * 
 */
export type Subscription = $Result.DefaultSelection<Prisma.$SubscriptionPayload>
/**
 * Model FounderAlgorithmCore
 * 
 */
export type FounderAlgorithmCore = $Result.DefaultSelection<Prisma.$FounderAlgorithmCorePayload>

/**
 * ##  Prisma Client ʲˢ
 *
 * Type-safe database client for TypeScript & Node.js
 * @example
 * ```
 * const prisma = new PrismaClient()
 * // Fetch zero or more Users
 * const users = await prisma.user.findMany()
 * ```
 *
 *
 * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client).
 */
export class PrismaClient<
  ClientOptions extends Prisma.PrismaClientOptions = Prisma.PrismaClientOptions,
  const U = 'log' extends keyof ClientOptions ? ClientOptions['log'] extends Array<Prisma.LogLevel | Prisma.LogDefinition> ? Prisma.GetEvents<ClientOptions['log']> : never : never,
  ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs
> {
  [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['other'] }

    /**
   * ##  Prisma Client ʲˢ
   *
   * Type-safe database client for TypeScript & Node.js
   * @example
   * ```
   * const prisma = new PrismaClient()
   * // Fetch zero or more Users
   * const users = await prisma.user.findMany()
   * ```
   *
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client).
   */

  constructor(optionsArg ?: Prisma.Subset<ClientOptions, Prisma.PrismaClientOptions>);
  $on<V extends U>(eventType: V, callback: (event: V extends 'query' ? Prisma.QueryEvent : Prisma.LogEvent) => void): PrismaClient;

  /**
   * Connect with the database
   */
  $connect(): $Utils.JsPromise<void>;

  /**
   * Disconnect from the database
   */
  $disconnect(): $Utils.JsPromise<void>;

  /**
   * Add a middleware
   * @deprecated since 4.16.0. For new code, prefer client extensions instead.
   * @see https://pris.ly/d/extensions
   */
  $use(cb: Prisma.Middleware): void

/**
   * Executes a prepared raw query and returns the number of affected rows.
   * @example
   * ```
   * const result = await prisma.$executeRaw`UPDATE User SET cool = ${true} WHERE email = ${'user@email.com'};`
   * ```
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/raw-database-access).
   */
  $executeRaw<T = unknown>(query: TemplateStringsArray | Prisma.Sql, ...values: any[]): Prisma.PrismaPromise<number>;

  /**
   * Executes a raw query and returns the number of affected rows.
   * Susceptible to SQL injections, see documentation.
   * @example
   * ```
   * const result = await prisma.$executeRawUnsafe('UPDATE User SET cool = $1 WHERE email = $2 ;', true, 'user@email.com')
   * ```
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/raw-database-access).
   */
  $executeRawUnsafe<T = unknown>(query: string, ...values: any[]): Prisma.PrismaPromise<number>;

  /**
   * Performs a prepared raw query and returns the `SELECT` data.
   * @example
   * ```
   * const result = await prisma.$queryRaw`SELECT * FROM User WHERE id = ${1} OR email = ${'user@email.com'};`
   * ```
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/raw-database-access).
   */
  $queryRaw<T = unknown>(query: TemplateStringsArray | Prisma.Sql, ...values: any[]): Prisma.PrismaPromise<T>;

  /**
   * Performs a raw query and returns the `SELECT` data.
   * Susceptible to SQL injections, see documentation.
   * @example
   * ```
   * const result = await prisma.$queryRawUnsafe('SELECT * FROM User WHERE id = $1 OR email = $2;', 1, 'user@email.com')
   * ```
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/raw-database-access).
   */
  $queryRawUnsafe<T = unknown>(query: string, ...values: any[]): Prisma.PrismaPromise<T>;


  /**
   * Allows the running of a sequence of read/write operations that are guaranteed to either succeed or fail as a whole.
   * @example
   * ```
   * const [george, bob, alice] = await prisma.$transaction([
   *   prisma.user.create({ data: { name: 'George' } }),
   *   prisma.user.create({ data: { name: 'Bob' } }),
   *   prisma.user.create({ data: { name: 'Alice' } }),
   * ])
   * ```
   * 
   * Read more in our [docs](https://www.prisma.io/docs/concepts/components/prisma-client/transactions).
   */
  $transaction<P extends Prisma.PrismaPromise<any>[]>(arg: [...P], options?: { isolationLevel?: Prisma.TransactionIsolationLevel }): $Utils.JsPromise<runtime.Types.Utils.UnwrapTuple<P>>

  $transaction<R>(fn: (prisma: Omit<PrismaClient, runtime.ITXClientDenyList>) => $Utils.JsPromise<R>, options?: { maxWait?: number, timeout?: number, isolationLevel?: Prisma.TransactionIsolationLevel }): $Utils.JsPromise<R>


  $extends: $Extensions.ExtendsHook<"extends", Prisma.TypeMapCb<ClientOptions>, ExtArgs, $Utils.Call<Prisma.TypeMapCb<ClientOptions>, {
    extArgs: ExtArgs
  }>>

      /**
   * `prisma.user`: Exposes CRUD operations for the **User** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more Users
    * const users = await prisma.user.findMany()
    * ```
    */
  get user(): Prisma.UserDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.consciousnessProfile`: Exposes CRUD operations for the **ConsciousnessProfile** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more ConsciousnessProfiles
    * const consciousnessProfiles = await prisma.consciousnessProfile.findMany()
    * ```
    */
  get consciousnessProfile(): Prisma.ConsciousnessProfileDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.bucketDrop`: Exposes CRUD operations for the **BucketDrop** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more BucketDrops
    * const bucketDrops = await prisma.bucketDrop.findMany()
    * ```
    */
  get bucketDrop(): Prisma.BucketDropDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.tapestryNode`: Exposes CRUD operations for the **TapestryNode** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more TapestryNodes
    * const tapestryNodes = await prisma.tapestryNode.findMany()
    * ```
    */
  get tapestryNode(): Prisma.TapestryNodeDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.tribunalSession`: Exposes CRUD operations for the **TribunalSession** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more TribunalSessions
    * const tribunalSessions = await prisma.tribunalSession.findMany()
    * ```
    */
  get tribunalSession(): Prisma.TribunalSessionDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.musicalDnaAnalysis`: Exposes CRUD operations for the **MusicalDnaAnalysis** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more MusicalDnaAnalyses
    * const musicalDnaAnalyses = await prisma.musicalDnaAnalysis.findMany()
    * ```
    */
  get musicalDnaAnalysis(): Prisma.MusicalDnaAnalysisDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.consciousnessMetric`: Exposes CRUD operations for the **ConsciousnessMetric** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more ConsciousnessMetrics
    * const consciousnessMetrics = await prisma.consciousnessMetric.findMany()
    * ```
    */
  get consciousnessMetric(): Prisma.ConsciousnessMetricDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.empowermentEvent`: Exposes CRUD operations for the **EmpowermentEvent** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more EmpowermentEvents
    * const empowermentEvents = await prisma.empowermentEvent.findMany()
    * ```
    */
  get empowermentEvent(): Prisma.EmpowermentEventDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.subscription`: Exposes CRUD operations for the **Subscription** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more Subscriptions
    * const subscriptions = await prisma.subscription.findMany()
    * ```
    */
  get subscription(): Prisma.SubscriptionDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.founderAlgorithmCore`: Exposes CRUD operations for the **FounderAlgorithmCore** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more FounderAlgorithmCores
    * const founderAlgorithmCores = await prisma.founderAlgorithmCore.findMany()
    * ```
    */
  get founderAlgorithmCore(): Prisma.FounderAlgorithmCoreDelegate<ExtArgs, ClientOptions>;
}

export namespace Prisma {
  export import DMMF = runtime.DMMF

  export type PrismaPromise<T> = $Public.PrismaPromise<T>

  /**
   * Validator
   */
  export import validator = runtime.Public.validator

  /**
   * Prisma Errors
   */
  export import PrismaClientKnownRequestError = runtime.PrismaClientKnownRequestError
  export import PrismaClientUnknownRequestError = runtime.PrismaClientUnknownRequestError
  export import PrismaClientRustPanicError = runtime.PrismaClientRustPanicError
  export import PrismaClientInitializationError = runtime.PrismaClientInitializationError
  export import PrismaClientValidationError = runtime.PrismaClientValidationError

  /**
   * Re-export of sql-template-tag
   */
  export import sql = runtime.sqltag
  export import empty = runtime.empty
  export import join = runtime.join
  export import raw = runtime.raw
  export import Sql = runtime.Sql



  /**
   * Decimal.js
   */
  export import Decimal = runtime.Decimal

  export type DecimalJsLike = runtime.DecimalJsLike

  /**
   * Metrics
   */
  export type Metrics = runtime.Metrics
  export type Metric<T> = runtime.Metric<T>
  export type MetricHistogram = runtime.MetricHistogram
  export type MetricHistogramBucket = runtime.MetricHistogramBucket

  /**
  * Extensions
  */
  export import Extension = $Extensions.UserArgs
  export import getExtensionContext = runtime.Extensions.getExtensionContext
  export import Args = $Public.Args
  export import Payload = $Public.Payload
  export import Result = $Public.Result
  export import Exact = $Public.Exact

  /**
   * Prisma Client JS version: 6.13.0
   * Query Engine version: 361e86d0ea4987e9f53a565309b3eed797a6bcbd
   */
  export type PrismaVersion = {
    client: string
  }

  export const prismaVersion: PrismaVersion

  /**
   * Utility Types
   */


  export import JsonObject = runtime.JsonObject
  export import JsonArray = runtime.JsonArray
  export import JsonValue = runtime.JsonValue
  export import InputJsonObject = runtime.InputJsonObject
  export import InputJsonArray = runtime.InputJsonArray
  export import InputJsonValue = runtime.InputJsonValue

  /**
   * Types of the values used to represent different kinds of `null` values when working with JSON fields.
   *
   * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
   */
  namespace NullTypes {
    /**
    * Type of `Prisma.DbNull`.
    *
    * You cannot use other instances of this class. Please use the `Prisma.DbNull` value.
    *
    * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
    */
    class DbNull {
      private DbNull: never
      private constructor()
    }

    /**
    * Type of `Prisma.JsonNull`.
    *
    * You cannot use other instances of this class. Please use the `Prisma.JsonNull` value.
    *
    * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
    */
    class JsonNull {
      private JsonNull: never
      private constructor()
    }

    /**
    * Type of `Prisma.AnyNull`.
    *
    * You cannot use other instances of this class. Please use the `Prisma.AnyNull` value.
    *
    * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
    */
    class AnyNull {
      private AnyNull: never
      private constructor()
    }
  }

  /**
   * Helper for filtering JSON entries that have `null` on the database (empty on the db)
   *
   * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
   */
  export const DbNull: NullTypes.DbNull

  /**
   * Helper for filtering JSON entries that have JSON `null` values (not empty on the db)
   *
   * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
   */
  export const JsonNull: NullTypes.JsonNull

  /**
   * Helper for filtering JSON entries that are `Prisma.DbNull` or `Prisma.JsonNull`
   *
   * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
   */
  export const AnyNull: NullTypes.AnyNull

  type SelectAndInclude = {
    select: any
    include: any
  }

  type SelectAndOmit = {
    select: any
    omit: any
  }

  /**
   * Get the type of the value, that the Promise holds.
   */
  export type PromiseType<T extends PromiseLike<any>> = T extends PromiseLike<infer U> ? U : T;

  /**
   * Get the return type of a function which returns a Promise.
   */
  export type PromiseReturnType<T extends (...args: any) => $Utils.JsPromise<any>> = PromiseType<ReturnType<T>>

  /**
   * From T, pick a set of properties whose keys are in the union K
   */
  type Prisma__Pick<T, K extends keyof T> = {
      [P in K]: T[P];
  };


  export type Enumerable<T> = T | Array<T>;

  export type RequiredKeys<T> = {
    [K in keyof T]-?: {} extends Prisma__Pick<T, K> ? never : K
  }[keyof T]

  export type TruthyKeys<T> = keyof {
    [K in keyof T as T[K] extends false | undefined | null ? never : K]: K
  }

  export type TrueKeys<T> = TruthyKeys<Prisma__Pick<T, RequiredKeys<T>>>

  /**
   * Subset
   * @desc From `T` pick properties that exist in `U`. Simple version of Intersection
   */
  export type Subset<T, U> = {
    [key in keyof T]: key extends keyof U ? T[key] : never;
  };

  /**
   * SelectSubset
   * @desc From `T` pick properties that exist in `U`. Simple version of Intersection.
   * Additionally, it validates, if both select and include are present. If the case, it errors.
   */
  export type SelectSubset<T, U> = {
    [key in keyof T]: key extends keyof U ? T[key] : never
  } &
    (T extends SelectAndInclude
      ? 'Please either choose `select` or `include`.'
      : T extends SelectAndOmit
        ? 'Please either choose `select` or `omit`.'
        : {})

  /**
   * Subset + Intersection
   * @desc From `T` pick properties that exist in `U` and intersect `K`
   */
  export type SubsetIntersection<T, U, K> = {
    [key in keyof T]: key extends keyof U ? T[key] : never
  } &
    K

  type Without<T, U> = { [P in Exclude<keyof T, keyof U>]?: never };

  /**
   * XOR is needed to have a real mutually exclusive union type
   * https://stackoverflow.com/questions/42123407/does-typescript-support-mutually-exclusive-types
   */
  type XOR<T, U> =
    T extends object ?
    U extends object ?
      (Without<T, U> & U) | (Without<U, T> & T)
    : U : T


  /**
   * Is T a Record?
   */
  type IsObject<T extends any> = T extends Array<any>
  ? False
  : T extends Date
  ? False
  : T extends Uint8Array
  ? False
  : T extends BigInt
  ? False
  : T extends object
  ? True
  : False


  /**
   * If it's T[], return T
   */
  export type UnEnumerate<T extends unknown> = T extends Array<infer U> ? U : T

  /**
   * From ts-toolbelt
   */

  type __Either<O extends object, K extends Key> = Omit<O, K> &
    {
      // Merge all but K
      [P in K]: Prisma__Pick<O, P & keyof O> // With K possibilities
    }[K]

  type EitherStrict<O extends object, K extends Key> = Strict<__Either<O, K>>

  type EitherLoose<O extends object, K extends Key> = ComputeRaw<__Either<O, K>>

  type _Either<
    O extends object,
    K extends Key,
    strict extends Boolean
  > = {
    1: EitherStrict<O, K>
    0: EitherLoose<O, K>
  }[strict]

  type Either<
    O extends object,
    K extends Key,
    strict extends Boolean = 1
  > = O extends unknown ? _Either<O, K, strict> : never

  export type Union = any

  type PatchUndefined<O extends object, O1 extends object> = {
    [K in keyof O]: O[K] extends undefined ? At<O1, K> : O[K]
  } & {}

  /** Helper Types for "Merge" **/
  export type IntersectOf<U extends Union> = (
    U extends unknown ? (k: U) => void : never
  ) extends (k: infer I) => void
    ? I
    : never

  export type Overwrite<O extends object, O1 extends object> = {
      [K in keyof O]: K extends keyof O1 ? O1[K] : O[K];
  } & {};

  type _Merge<U extends object> = IntersectOf<Overwrite<U, {
      [K in keyof U]-?: At<U, K>;
  }>>;

  type Key = string | number | symbol;
  type AtBasic<O extends object, K extends Key> = K extends keyof O ? O[K] : never;
  type AtStrict<O extends object, K extends Key> = O[K & keyof O];
  type AtLoose<O extends object, K extends Key> = O extends unknown ? AtStrict<O, K> : never;
  export type At<O extends object, K extends Key, strict extends Boolean = 1> = {
      1: AtStrict<O, K>;
      0: AtLoose<O, K>;
  }[strict];

  export type ComputeRaw<A extends any> = A extends Function ? A : {
    [K in keyof A]: A[K];
  } & {};

  export type OptionalFlat<O> = {
    [K in keyof O]?: O[K];
  } & {};

  type _Record<K extends keyof any, T> = {
    [P in K]: T;
  };

  // cause typescript not to expand types and preserve names
  type NoExpand<T> = T extends unknown ? T : never;

  // this type assumes the passed object is entirely optional
  type AtLeast<O extends object, K extends string> = NoExpand<
    O extends unknown
    ? | (K extends keyof O ? { [P in K]: O[P] } & O : O)
      | {[P in keyof O as P extends K ? P : never]-?: O[P]} & O
    : never>;

  type _Strict<U, _U = U> = U extends unknown ? U & OptionalFlat<_Record<Exclude<Keys<_U>, keyof U>, never>> : never;

  export type Strict<U extends object> = ComputeRaw<_Strict<U>>;
  /** End Helper Types for "Merge" **/

  export type Merge<U extends object> = ComputeRaw<_Merge<Strict<U>>>;

  /**
  A [[Boolean]]
  */
  export type Boolean = True | False

  // /**
  // 1
  // */
  export type True = 1

  /**
  0
  */
  export type False = 0

  export type Not<B extends Boolean> = {
    0: 1
    1: 0
  }[B]

  export type Extends<A1 extends any, A2 extends any> = [A1] extends [never]
    ? 0 // anything `never` is false
    : A1 extends A2
    ? 1
    : 0

  export type Has<U extends Union, U1 extends Union> = Not<
    Extends<Exclude<U1, U>, U1>
  >

  export type Or<B1 extends Boolean, B2 extends Boolean> = {
    0: {
      0: 0
      1: 1
    }
    1: {
      0: 1
      1: 1
    }
  }[B1][B2]

  export type Keys<U extends Union> = U extends unknown ? keyof U : never

  type Cast<A, B> = A extends B ? A : B;

  export const type: unique symbol;



  /**
   * Used by group by
   */

  export type GetScalarType<T, O> = O extends object ? {
    [P in keyof T]: P extends keyof O
      ? O[P]
      : never
  } : never

  type FieldPaths<
    T,
    U = Omit<T, '_avg' | '_sum' | '_count' | '_min' | '_max'>
  > = IsObject<T> extends True ? U : T

  type GetHavingFields<T> = {
    [K in keyof T]: Or<
      Or<Extends<'OR', K>, Extends<'AND', K>>,
      Extends<'NOT', K>
    > extends True
      ? // infer is only needed to not hit TS limit
        // based on the brilliant idea of Pierre-Antoine Mills
        // https://github.com/microsoft/TypeScript/issues/30188#issuecomment-478938437
        T[K] extends infer TK
        ? GetHavingFields<UnEnumerate<TK> extends object ? Merge<UnEnumerate<TK>> : never>
        : never
      : {} extends FieldPaths<T[K]>
      ? never
      : K
  }[keyof T]

  /**
   * Convert tuple to union
   */
  type _TupleToUnion<T> = T extends (infer E)[] ? E : never
  type TupleToUnion<K extends readonly any[]> = _TupleToUnion<K>
  type MaybeTupleToUnion<T> = T extends any[] ? TupleToUnion<T> : T

  /**
   * Like `Pick`, but additionally can also accept an array of keys
   */
  type PickEnumerable<T, K extends Enumerable<keyof T> | keyof T> = Prisma__Pick<T, MaybeTupleToUnion<K>>

  /**
   * Exclude all keys with underscores
   */
  type ExcludeUnderscoreKeys<T extends string> = T extends `_${string}` ? never : T


  export type FieldRef<Model, FieldType> = runtime.FieldRef<Model, FieldType>

  type FieldRefInputType<Model, FieldType> = Model extends never ? never : FieldRef<Model, FieldType>


  export const ModelName: {
    User: 'User',
    ConsciousnessProfile: 'ConsciousnessProfile',
    BucketDrop: 'BucketDrop',
    TapestryNode: 'TapestryNode',
    TribunalSession: 'TribunalSession',
    MusicalDnaAnalysis: 'MusicalDnaAnalysis',
    ConsciousnessMetric: 'ConsciousnessMetric',
    EmpowermentEvent: 'EmpowermentEvent',
    Subscription: 'Subscription',
    FounderAlgorithmCore: 'FounderAlgorithmCore'
  };

  export type ModelName = (typeof ModelName)[keyof typeof ModelName]


  export type Datasources = {
    db?: Datasource
  }

  interface TypeMapCb<ClientOptions = {}> extends $Utils.Fn<{extArgs: $Extensions.InternalArgs }, $Utils.Record<string, any>> {
    returns: Prisma.TypeMap<this['params']['extArgs'], ClientOptions extends { omit: infer OmitOptions } ? OmitOptions : {}>
  }

  export type TypeMap<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> = {
    globalOmitOptions: {
      omit: GlobalOmitOptions
    }
    meta: {
      modelProps: "user" | "consciousnessProfile" | "bucketDrop" | "tapestryNode" | "tribunalSession" | "musicalDnaAnalysis" | "consciousnessMetric" | "empowermentEvent" | "subscription" | "founderAlgorithmCore"
      txIsolationLevel: Prisma.TransactionIsolationLevel
    }
    model: {
      User: {
        payload: Prisma.$UserPayload<ExtArgs>
        fields: Prisma.UserFieldRefs
        operations: {
          findUnique: {
            args: Prisma.UserFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.UserFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>
          }
          findFirst: {
            args: Prisma.UserFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.UserFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>
          }
          findMany: {
            args: Prisma.UserFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>[]
          }
          create: {
            args: Prisma.UserCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>
          }
          createMany: {
            args: Prisma.UserCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.UserCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>[]
          }
          delete: {
            args: Prisma.UserDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>
          }
          update: {
            args: Prisma.UserUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>
          }
          deleteMany: {
            args: Prisma.UserDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.UserUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.UserUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>[]
          }
          upsert: {
            args: Prisma.UserUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$UserPayload>
          }
          aggregate: {
            args: Prisma.UserAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateUser>
          }
          groupBy: {
            args: Prisma.UserGroupByArgs<ExtArgs>
            result: $Utils.Optional<UserGroupByOutputType>[]
          }
          count: {
            args: Prisma.UserCountArgs<ExtArgs>
            result: $Utils.Optional<UserCountAggregateOutputType> | number
          }
        }
      }
      ConsciousnessProfile: {
        payload: Prisma.$ConsciousnessProfilePayload<ExtArgs>
        fields: Prisma.ConsciousnessProfileFieldRefs
        operations: {
          findUnique: {
            args: Prisma.ConsciousnessProfileFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.ConsciousnessProfileFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>
          }
          findFirst: {
            args: Prisma.ConsciousnessProfileFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.ConsciousnessProfileFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>
          }
          findMany: {
            args: Prisma.ConsciousnessProfileFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>[]
          }
          create: {
            args: Prisma.ConsciousnessProfileCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>
          }
          createMany: {
            args: Prisma.ConsciousnessProfileCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.ConsciousnessProfileCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>[]
          }
          delete: {
            args: Prisma.ConsciousnessProfileDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>
          }
          update: {
            args: Prisma.ConsciousnessProfileUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>
          }
          deleteMany: {
            args: Prisma.ConsciousnessProfileDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.ConsciousnessProfileUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.ConsciousnessProfileUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>[]
          }
          upsert: {
            args: Prisma.ConsciousnessProfileUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessProfilePayload>
          }
          aggregate: {
            args: Prisma.ConsciousnessProfileAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateConsciousnessProfile>
          }
          groupBy: {
            args: Prisma.ConsciousnessProfileGroupByArgs<ExtArgs>
            result: $Utils.Optional<ConsciousnessProfileGroupByOutputType>[]
          }
          count: {
            args: Prisma.ConsciousnessProfileCountArgs<ExtArgs>
            result: $Utils.Optional<ConsciousnessProfileCountAggregateOutputType> | number
          }
        }
      }
      BucketDrop: {
        payload: Prisma.$BucketDropPayload<ExtArgs>
        fields: Prisma.BucketDropFieldRefs
        operations: {
          findUnique: {
            args: Prisma.BucketDropFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.BucketDropFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>
          }
          findFirst: {
            args: Prisma.BucketDropFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.BucketDropFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>
          }
          findMany: {
            args: Prisma.BucketDropFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>[]
          }
          create: {
            args: Prisma.BucketDropCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>
          }
          createMany: {
            args: Prisma.BucketDropCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.BucketDropCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>[]
          }
          delete: {
            args: Prisma.BucketDropDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>
          }
          update: {
            args: Prisma.BucketDropUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>
          }
          deleteMany: {
            args: Prisma.BucketDropDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.BucketDropUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.BucketDropUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>[]
          }
          upsert: {
            args: Prisma.BucketDropUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$BucketDropPayload>
          }
          aggregate: {
            args: Prisma.BucketDropAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateBucketDrop>
          }
          groupBy: {
            args: Prisma.BucketDropGroupByArgs<ExtArgs>
            result: $Utils.Optional<BucketDropGroupByOutputType>[]
          }
          count: {
            args: Prisma.BucketDropCountArgs<ExtArgs>
            result: $Utils.Optional<BucketDropCountAggregateOutputType> | number
          }
        }
      }
      TapestryNode: {
        payload: Prisma.$TapestryNodePayload<ExtArgs>
        fields: Prisma.TapestryNodeFieldRefs
        operations: {
          findUnique: {
            args: Prisma.TapestryNodeFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.TapestryNodeFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>
          }
          findFirst: {
            args: Prisma.TapestryNodeFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.TapestryNodeFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>
          }
          findMany: {
            args: Prisma.TapestryNodeFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>[]
          }
          create: {
            args: Prisma.TapestryNodeCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>
          }
          createMany: {
            args: Prisma.TapestryNodeCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.TapestryNodeCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>[]
          }
          delete: {
            args: Prisma.TapestryNodeDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>
          }
          update: {
            args: Prisma.TapestryNodeUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>
          }
          deleteMany: {
            args: Prisma.TapestryNodeDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.TapestryNodeUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.TapestryNodeUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>[]
          }
          upsert: {
            args: Prisma.TapestryNodeUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TapestryNodePayload>
          }
          aggregate: {
            args: Prisma.TapestryNodeAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateTapestryNode>
          }
          groupBy: {
            args: Prisma.TapestryNodeGroupByArgs<ExtArgs>
            result: $Utils.Optional<TapestryNodeGroupByOutputType>[]
          }
          count: {
            args: Prisma.TapestryNodeCountArgs<ExtArgs>
            result: $Utils.Optional<TapestryNodeCountAggregateOutputType> | number
          }
        }
      }
      TribunalSession: {
        payload: Prisma.$TribunalSessionPayload<ExtArgs>
        fields: Prisma.TribunalSessionFieldRefs
        operations: {
          findUnique: {
            args: Prisma.TribunalSessionFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.TribunalSessionFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>
          }
          findFirst: {
            args: Prisma.TribunalSessionFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.TribunalSessionFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>
          }
          findMany: {
            args: Prisma.TribunalSessionFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>[]
          }
          create: {
            args: Prisma.TribunalSessionCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>
          }
          createMany: {
            args: Prisma.TribunalSessionCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.TribunalSessionCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>[]
          }
          delete: {
            args: Prisma.TribunalSessionDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>
          }
          update: {
            args: Prisma.TribunalSessionUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>
          }
          deleteMany: {
            args: Prisma.TribunalSessionDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.TribunalSessionUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.TribunalSessionUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>[]
          }
          upsert: {
            args: Prisma.TribunalSessionUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$TribunalSessionPayload>
          }
          aggregate: {
            args: Prisma.TribunalSessionAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateTribunalSession>
          }
          groupBy: {
            args: Prisma.TribunalSessionGroupByArgs<ExtArgs>
            result: $Utils.Optional<TribunalSessionGroupByOutputType>[]
          }
          count: {
            args: Prisma.TribunalSessionCountArgs<ExtArgs>
            result: $Utils.Optional<TribunalSessionCountAggregateOutputType> | number
          }
        }
      }
      MusicalDnaAnalysis: {
        payload: Prisma.$MusicalDnaAnalysisPayload<ExtArgs>
        fields: Prisma.MusicalDnaAnalysisFieldRefs
        operations: {
          findUnique: {
            args: Prisma.MusicalDnaAnalysisFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.MusicalDnaAnalysisFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>
          }
          findFirst: {
            args: Prisma.MusicalDnaAnalysisFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.MusicalDnaAnalysisFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>
          }
          findMany: {
            args: Prisma.MusicalDnaAnalysisFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>[]
          }
          create: {
            args: Prisma.MusicalDnaAnalysisCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>
          }
          createMany: {
            args: Prisma.MusicalDnaAnalysisCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.MusicalDnaAnalysisCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>[]
          }
          delete: {
            args: Prisma.MusicalDnaAnalysisDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>
          }
          update: {
            args: Prisma.MusicalDnaAnalysisUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>
          }
          deleteMany: {
            args: Prisma.MusicalDnaAnalysisDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.MusicalDnaAnalysisUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.MusicalDnaAnalysisUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>[]
          }
          upsert: {
            args: Prisma.MusicalDnaAnalysisUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$MusicalDnaAnalysisPayload>
          }
          aggregate: {
            args: Prisma.MusicalDnaAnalysisAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateMusicalDnaAnalysis>
          }
          groupBy: {
            args: Prisma.MusicalDnaAnalysisGroupByArgs<ExtArgs>
            result: $Utils.Optional<MusicalDnaAnalysisGroupByOutputType>[]
          }
          count: {
            args: Prisma.MusicalDnaAnalysisCountArgs<ExtArgs>
            result: $Utils.Optional<MusicalDnaAnalysisCountAggregateOutputType> | number
          }
        }
      }
      ConsciousnessMetric: {
        payload: Prisma.$ConsciousnessMetricPayload<ExtArgs>
        fields: Prisma.ConsciousnessMetricFieldRefs
        operations: {
          findUnique: {
            args: Prisma.ConsciousnessMetricFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.ConsciousnessMetricFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>
          }
          findFirst: {
            args: Prisma.ConsciousnessMetricFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.ConsciousnessMetricFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>
          }
          findMany: {
            args: Prisma.ConsciousnessMetricFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>[]
          }
          create: {
            args: Prisma.ConsciousnessMetricCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>
          }
          createMany: {
            args: Prisma.ConsciousnessMetricCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.ConsciousnessMetricCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>[]
          }
          delete: {
            args: Prisma.ConsciousnessMetricDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>
          }
          update: {
            args: Prisma.ConsciousnessMetricUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>
          }
          deleteMany: {
            args: Prisma.ConsciousnessMetricDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.ConsciousnessMetricUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.ConsciousnessMetricUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>[]
          }
          upsert: {
            args: Prisma.ConsciousnessMetricUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ConsciousnessMetricPayload>
          }
          aggregate: {
            args: Prisma.ConsciousnessMetricAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateConsciousnessMetric>
          }
          groupBy: {
            args: Prisma.ConsciousnessMetricGroupByArgs<ExtArgs>
            result: $Utils.Optional<ConsciousnessMetricGroupByOutputType>[]
          }
          count: {
            args: Prisma.ConsciousnessMetricCountArgs<ExtArgs>
            result: $Utils.Optional<ConsciousnessMetricCountAggregateOutputType> | number
          }
        }
      }
      EmpowermentEvent: {
        payload: Prisma.$EmpowermentEventPayload<ExtArgs>
        fields: Prisma.EmpowermentEventFieldRefs
        operations: {
          findUnique: {
            args: Prisma.EmpowermentEventFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.EmpowermentEventFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>
          }
          findFirst: {
            args: Prisma.EmpowermentEventFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.EmpowermentEventFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>
          }
          findMany: {
            args: Prisma.EmpowermentEventFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>[]
          }
          create: {
            args: Prisma.EmpowermentEventCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>
          }
          createMany: {
            args: Prisma.EmpowermentEventCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.EmpowermentEventCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>[]
          }
          delete: {
            args: Prisma.EmpowermentEventDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>
          }
          update: {
            args: Prisma.EmpowermentEventUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>
          }
          deleteMany: {
            args: Prisma.EmpowermentEventDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.EmpowermentEventUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.EmpowermentEventUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>[]
          }
          upsert: {
            args: Prisma.EmpowermentEventUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$EmpowermentEventPayload>
          }
          aggregate: {
            args: Prisma.EmpowermentEventAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateEmpowermentEvent>
          }
          groupBy: {
            args: Prisma.EmpowermentEventGroupByArgs<ExtArgs>
            result: $Utils.Optional<EmpowermentEventGroupByOutputType>[]
          }
          count: {
            args: Prisma.EmpowermentEventCountArgs<ExtArgs>
            result: $Utils.Optional<EmpowermentEventCountAggregateOutputType> | number
          }
        }
      }
      Subscription: {
        payload: Prisma.$SubscriptionPayload<ExtArgs>
        fields: Prisma.SubscriptionFieldRefs
        operations: {
          findUnique: {
            args: Prisma.SubscriptionFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.SubscriptionFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>
          }
          findFirst: {
            args: Prisma.SubscriptionFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.SubscriptionFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>
          }
          findMany: {
            args: Prisma.SubscriptionFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>[]
          }
          create: {
            args: Prisma.SubscriptionCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>
          }
          createMany: {
            args: Prisma.SubscriptionCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.SubscriptionCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>[]
          }
          delete: {
            args: Prisma.SubscriptionDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>
          }
          update: {
            args: Prisma.SubscriptionUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>
          }
          deleteMany: {
            args: Prisma.SubscriptionDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.SubscriptionUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.SubscriptionUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>[]
          }
          upsert: {
            args: Prisma.SubscriptionUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$SubscriptionPayload>
          }
          aggregate: {
            args: Prisma.SubscriptionAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateSubscription>
          }
          groupBy: {
            args: Prisma.SubscriptionGroupByArgs<ExtArgs>
            result: $Utils.Optional<SubscriptionGroupByOutputType>[]
          }
          count: {
            args: Prisma.SubscriptionCountArgs<ExtArgs>
            result: $Utils.Optional<SubscriptionCountAggregateOutputType> | number
          }
        }
      }
      FounderAlgorithmCore: {
        payload: Prisma.$FounderAlgorithmCorePayload<ExtArgs>
        fields: Prisma.FounderAlgorithmCoreFieldRefs
        operations: {
          findUnique: {
            args: Prisma.FounderAlgorithmCoreFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.FounderAlgorithmCoreFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>
          }
          findFirst: {
            args: Prisma.FounderAlgorithmCoreFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.FounderAlgorithmCoreFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>
          }
          findMany: {
            args: Prisma.FounderAlgorithmCoreFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>[]
          }
          create: {
            args: Prisma.FounderAlgorithmCoreCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>
          }
          createMany: {
            args: Prisma.FounderAlgorithmCoreCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.FounderAlgorithmCoreCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>[]
          }
          delete: {
            args: Prisma.FounderAlgorithmCoreDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>
          }
          update: {
            args: Prisma.FounderAlgorithmCoreUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>
          }
          deleteMany: {
            args: Prisma.FounderAlgorithmCoreDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.FounderAlgorithmCoreUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.FounderAlgorithmCoreUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>[]
          }
          upsert: {
            args: Prisma.FounderAlgorithmCoreUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$FounderAlgorithmCorePayload>
          }
          aggregate: {
            args: Prisma.FounderAlgorithmCoreAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateFounderAlgorithmCore>
          }
          groupBy: {
            args: Prisma.FounderAlgorithmCoreGroupByArgs<ExtArgs>
            result: $Utils.Optional<FounderAlgorithmCoreGroupByOutputType>[]
          }
          count: {
            args: Prisma.FounderAlgorithmCoreCountArgs<ExtArgs>
            result: $Utils.Optional<FounderAlgorithmCoreCountAggregateOutputType> | number
          }
        }
      }
    }
  } & {
    other: {
      payload: any
      operations: {
        $executeRaw: {
          args: [query: TemplateStringsArray | Prisma.Sql, ...values: any[]],
          result: any
        }
        $executeRawUnsafe: {
          args: [query: string, ...values: any[]],
          result: any
        }
        $queryRaw: {
          args: [query: TemplateStringsArray | Prisma.Sql, ...values: any[]],
          result: any
        }
        $queryRawUnsafe: {
          args: [query: string, ...values: any[]],
          result: any
        }
      }
    }
  }
  export const defineExtension: $Extensions.ExtendsHook<"define", Prisma.TypeMapCb, $Extensions.DefaultArgs>
  export type DefaultPrismaClient = PrismaClient
  export type ErrorFormat = 'pretty' | 'colorless' | 'minimal'
  export interface PrismaClientOptions {
    /**
     * Overwrites the datasource url from your schema.prisma file
     */
    datasources?: Datasources
    /**
     * Overwrites the datasource url from your schema.prisma file
     */
    datasourceUrl?: string
    /**
     * @default "colorless"
     */
    errorFormat?: ErrorFormat
    /**
     * @example
     * ```
     * // Shorthand for `emit: 'stdout'`
     * log: ['query', 'info', 'warn', 'error']
     * 
     * // Emit as events only
     * log: [
     *   { emit: 'event', level: 'query' },
     *   { emit: 'event', level: 'info' },
     *   { emit: 'event', level: 'warn' }
     *   { emit: 'event', level: 'error' }
     * ]
     * 
     * / Emit as events and log to stdout
     * og: [
     *  { emit: 'stdout', level: 'query' },
     *  { emit: 'stdout', level: 'info' },
     *  { emit: 'stdout', level: 'warn' }
     *  { emit: 'stdout', level: 'error' }
     * 
     * ```
     * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/logging#the-log-option).
     */
    log?: (LogLevel | LogDefinition)[]
    /**
     * The default values for transactionOptions
     * maxWait ?= 2000
     * timeout ?= 5000
     */
    transactionOptions?: {
      maxWait?: number
      timeout?: number
      isolationLevel?: Prisma.TransactionIsolationLevel
    }
    /**
     * Global configuration for omitting model fields by default.
     * 
     * @example
     * ```
     * const prisma = new PrismaClient({
     *   omit: {
     *     user: {
     *       password: true
     *     }
     *   }
     * })
     * ```
     */
    omit?: Prisma.GlobalOmitConfig
  }
  export type GlobalOmitConfig = {
    user?: UserOmit
    consciousnessProfile?: ConsciousnessProfileOmit
    bucketDrop?: BucketDropOmit
    tapestryNode?: TapestryNodeOmit
    tribunalSession?: TribunalSessionOmit
    musicalDnaAnalysis?: MusicalDnaAnalysisOmit
    consciousnessMetric?: ConsciousnessMetricOmit
    empowermentEvent?: EmpowermentEventOmit
    subscription?: SubscriptionOmit
    founderAlgorithmCore?: FounderAlgorithmCoreOmit
  }

  /* Types for Logging */
  export type LogLevel = 'info' | 'query' | 'warn' | 'error'
  export type LogDefinition = {
    level: LogLevel
    emit: 'stdout' | 'event'
  }

  export type CheckIsLogLevel<T> = T extends LogLevel ? T : never;

  export type GetLogType<T> = CheckIsLogLevel<
    T extends LogDefinition ? T['level'] : T
  >;

  export type GetEvents<T extends any[]> = T extends Array<LogLevel | LogDefinition>
    ? GetLogType<T[number]>
    : never;

  export type QueryEvent = {
    timestamp: Date
    query: string
    params: string
    duration: number
    target: string
  }

  export type LogEvent = {
    timestamp: Date
    message: string
    target: string
  }
  /* End Types for Logging */


  export type PrismaAction =
    | 'findUnique'
    | 'findUniqueOrThrow'
    | 'findMany'
    | 'findFirst'
    | 'findFirstOrThrow'
    | 'create'
    | 'createMany'
    | 'createManyAndReturn'
    | 'update'
    | 'updateMany'
    | 'updateManyAndReturn'
    | 'upsert'
    | 'delete'
    | 'deleteMany'
    | 'executeRaw'
    | 'queryRaw'
    | 'aggregate'
    | 'count'
    | 'runCommandRaw'
    | 'findRaw'
    | 'groupBy'

  /**
   * These options are being passed into the middleware as "params"
   */
  export type MiddlewareParams = {
    model?: ModelName
    action: PrismaAction
    args: any
    dataPath: string[]
    runInTransaction: boolean
  }

  /**
   * The `T` type makes sure, that the `return proceed` is not forgotten in the middleware implementation
   */
  export type Middleware<T = any> = (
    params: MiddlewareParams,
    next: (params: MiddlewareParams) => $Utils.JsPromise<T>,
  ) => $Utils.JsPromise<T>

  // tested in getLogLevel.test.ts
  export function getLogLevel(log: Array<LogLevel | LogDefinition>): LogLevel | undefined;

  /**
   * `PrismaClient` proxy available in interactive transactions.
   */
  export type TransactionClient = Omit<Prisma.DefaultPrismaClient, runtime.ITXClientDenyList>

  export type Datasource = {
    url?: string
  }

  /**
   * Count Types
   */


  /**
   * Count Type UserCountOutputType
   */

  export type UserCountOutputType = {
    bucketDrops: number
    tapestryNodes: number
    tribunalSessions: number
    consciousnessMetrics: number
    musicalDnaAnalyses: number
    empowermentEvents: number
  }

  export type UserCountOutputTypeSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    bucketDrops?: boolean | UserCountOutputTypeCountBucketDropsArgs
    tapestryNodes?: boolean | UserCountOutputTypeCountTapestryNodesArgs
    tribunalSessions?: boolean | UserCountOutputTypeCountTribunalSessionsArgs
    consciousnessMetrics?: boolean | UserCountOutputTypeCountConsciousnessMetricsArgs
    musicalDnaAnalyses?: boolean | UserCountOutputTypeCountMusicalDnaAnalysesArgs
    empowermentEvents?: boolean | UserCountOutputTypeCountEmpowermentEventsArgs
  }

  // Custom InputTypes
  /**
   * UserCountOutputType without action
   */
  export type UserCountOutputTypeDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the UserCountOutputType
     */
    select?: UserCountOutputTypeSelect<ExtArgs> | null
  }

  /**
   * UserCountOutputType without action
   */
  export type UserCountOutputTypeCountBucketDropsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: BucketDropWhereInput
  }

  /**
   * UserCountOutputType without action
   */
  export type UserCountOutputTypeCountTapestryNodesArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: TapestryNodeWhereInput
  }

  /**
   * UserCountOutputType without action
   */
  export type UserCountOutputTypeCountTribunalSessionsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: TribunalSessionWhereInput
  }

  /**
   * UserCountOutputType without action
   */
  export type UserCountOutputTypeCountConsciousnessMetricsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: ConsciousnessMetricWhereInput
  }

  /**
   * UserCountOutputType without action
   */
  export type UserCountOutputTypeCountMusicalDnaAnalysesArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: MusicalDnaAnalysisWhereInput
  }

  /**
   * UserCountOutputType without action
   */
  export type UserCountOutputTypeCountEmpowermentEventsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: EmpowermentEventWhereInput
  }


  /**
   * Count Type BucketDropCountOutputType
   */

  export type BucketDropCountOutputType = {
    tapestryNodes: number
    empowermentEvents: number
  }

  export type BucketDropCountOutputTypeSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    tapestryNodes?: boolean | BucketDropCountOutputTypeCountTapestryNodesArgs
    empowermentEvents?: boolean | BucketDropCountOutputTypeCountEmpowermentEventsArgs
  }

  // Custom InputTypes
  /**
   * BucketDropCountOutputType without action
   */
  export type BucketDropCountOutputTypeDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDropCountOutputType
     */
    select?: BucketDropCountOutputTypeSelect<ExtArgs> | null
  }

  /**
   * BucketDropCountOutputType without action
   */
  export type BucketDropCountOutputTypeCountTapestryNodesArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: TapestryNodeWhereInput
  }

  /**
   * BucketDropCountOutputType without action
   */
  export type BucketDropCountOutputTypeCountEmpowermentEventsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: EmpowermentEventWhereInput
  }


  /**
   * Models
   */

  /**
   * Model User
   */

  export type AggregateUser = {
    _count: UserCountAggregateOutputType | null
    _min: UserMinAggregateOutputType | null
    _max: UserMaxAggregateOutputType | null
  }

  export type UserMinAggregateOutputType = {
    id: string | null
    clerkId: string | null
    email: string | null
    username: string | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type UserMaxAggregateOutputType = {
    id: string | null
    clerkId: string | null
    email: string | null
    username: string | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type UserCountAggregateOutputType = {
    id: number
    clerkId: number
    email: number
    username: number
    createdAt: number
    updatedAt: number
    _all: number
  }


  export type UserMinAggregateInputType = {
    id?: true
    clerkId?: true
    email?: true
    username?: true
    createdAt?: true
    updatedAt?: true
  }

  export type UserMaxAggregateInputType = {
    id?: true
    clerkId?: true
    email?: true
    username?: true
    createdAt?: true
    updatedAt?: true
  }

  export type UserCountAggregateInputType = {
    id?: true
    clerkId?: true
    email?: true
    username?: true
    createdAt?: true
    updatedAt?: true
    _all?: true
  }

  export type UserAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which User to aggregate.
     */
    where?: UserWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Users to fetch.
     */
    orderBy?: UserOrderByWithRelationInput | UserOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: UserWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Users from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Users.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned Users
    **/
    _count?: true | UserCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: UserMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: UserMaxAggregateInputType
  }

  export type GetUserAggregateType<T extends UserAggregateArgs> = {
        [P in keyof T & keyof AggregateUser]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateUser[P]>
      : GetScalarType<T[P], AggregateUser[P]>
  }




  export type UserGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: UserWhereInput
    orderBy?: UserOrderByWithAggregationInput | UserOrderByWithAggregationInput[]
    by: UserScalarFieldEnum[] | UserScalarFieldEnum
    having?: UserScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: UserCountAggregateInputType | true
    _min?: UserMinAggregateInputType
    _max?: UserMaxAggregateInputType
  }

  export type UserGroupByOutputType = {
    id: string
    clerkId: string
    email: string
    username: string | null
    createdAt: Date
    updatedAt: Date
    _count: UserCountAggregateOutputType | null
    _min: UserMinAggregateOutputType | null
    _max: UserMaxAggregateOutputType | null
  }

  type GetUserGroupByPayload<T extends UserGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<UserGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof UserGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], UserGroupByOutputType[P]>
            : GetScalarType<T[P], UserGroupByOutputType[P]>
        }
      >
    >


  export type UserSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    clerkId?: boolean
    email?: boolean
    username?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    consciousnessProfile?: boolean | User$consciousnessProfileArgs<ExtArgs>
    bucketDrops?: boolean | User$bucketDropsArgs<ExtArgs>
    tapestryNodes?: boolean | User$tapestryNodesArgs<ExtArgs>
    tribunalSessions?: boolean | User$tribunalSessionsArgs<ExtArgs>
    consciousnessMetrics?: boolean | User$consciousnessMetricsArgs<ExtArgs>
    musicalDnaAnalyses?: boolean | User$musicalDnaAnalysesArgs<ExtArgs>
    empowermentEvents?: boolean | User$empowermentEventsArgs<ExtArgs>
    subscription?: boolean | User$subscriptionArgs<ExtArgs>
    _count?: boolean | UserCountOutputTypeDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["user"]>

  export type UserSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    clerkId?: boolean
    email?: boolean
    username?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }, ExtArgs["result"]["user"]>

  export type UserSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    clerkId?: boolean
    email?: boolean
    username?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }, ExtArgs["result"]["user"]>

  export type UserSelectScalar = {
    id?: boolean
    clerkId?: boolean
    email?: boolean
    username?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }

  export type UserOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "clerkId" | "email" | "username" | "createdAt" | "updatedAt", ExtArgs["result"]["user"]>
  export type UserInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    consciousnessProfile?: boolean | User$consciousnessProfileArgs<ExtArgs>
    bucketDrops?: boolean | User$bucketDropsArgs<ExtArgs>
    tapestryNodes?: boolean | User$tapestryNodesArgs<ExtArgs>
    tribunalSessions?: boolean | User$tribunalSessionsArgs<ExtArgs>
    consciousnessMetrics?: boolean | User$consciousnessMetricsArgs<ExtArgs>
    musicalDnaAnalyses?: boolean | User$musicalDnaAnalysesArgs<ExtArgs>
    empowermentEvents?: boolean | User$empowermentEventsArgs<ExtArgs>
    subscription?: boolean | User$subscriptionArgs<ExtArgs>
    _count?: boolean | UserCountOutputTypeDefaultArgs<ExtArgs>
  }
  export type UserIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {}
  export type UserIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {}

  export type $UserPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "User"
    objects: {
      consciousnessProfile: Prisma.$ConsciousnessProfilePayload<ExtArgs> | null
      bucketDrops: Prisma.$BucketDropPayload<ExtArgs>[]
      tapestryNodes: Prisma.$TapestryNodePayload<ExtArgs>[]
      tribunalSessions: Prisma.$TribunalSessionPayload<ExtArgs>[]
      consciousnessMetrics: Prisma.$ConsciousnessMetricPayload<ExtArgs>[]
      musicalDnaAnalyses: Prisma.$MusicalDnaAnalysisPayload<ExtArgs>[]
      empowermentEvents: Prisma.$EmpowermentEventPayload<ExtArgs>[]
      subscription: Prisma.$SubscriptionPayload<ExtArgs> | null
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      clerkId: string
      email: string
      username: string | null
      createdAt: Date
      updatedAt: Date
    }, ExtArgs["result"]["user"]>
    composites: {}
  }

  type UserGetPayload<S extends boolean | null | undefined | UserDefaultArgs> = $Result.GetResult<Prisma.$UserPayload, S>

  type UserCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<UserFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: UserCountAggregateInputType | true
    }

  export interface UserDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['User'], meta: { name: 'User' } }
    /**
     * Find zero or one User that matches the filter.
     * @param {UserFindUniqueArgs} args - Arguments to find a User
     * @example
     * // Get one User
     * const user = await prisma.user.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends UserFindUniqueArgs>(args: SelectSubset<T, UserFindUniqueArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one User that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {UserFindUniqueOrThrowArgs} args - Arguments to find a User
     * @example
     * // Get one User
     * const user = await prisma.user.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends UserFindUniqueOrThrowArgs>(args: SelectSubset<T, UserFindUniqueOrThrowArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first User that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {UserFindFirstArgs} args - Arguments to find a User
     * @example
     * // Get one User
     * const user = await prisma.user.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends UserFindFirstArgs>(args?: SelectSubset<T, UserFindFirstArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first User that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {UserFindFirstOrThrowArgs} args - Arguments to find a User
     * @example
     * // Get one User
     * const user = await prisma.user.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends UserFindFirstOrThrowArgs>(args?: SelectSubset<T, UserFindFirstOrThrowArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more Users that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {UserFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all Users
     * const users = await prisma.user.findMany()
     * 
     * // Get first 10 Users
     * const users = await prisma.user.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const userWithIdOnly = await prisma.user.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends UserFindManyArgs>(args?: SelectSubset<T, UserFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a User.
     * @param {UserCreateArgs} args - Arguments to create a User.
     * @example
     * // Create one User
     * const User = await prisma.user.create({
     *   data: {
     *     // ... data to create a User
     *   }
     * })
     * 
     */
    create<T extends UserCreateArgs>(args: SelectSubset<T, UserCreateArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many Users.
     * @param {UserCreateManyArgs} args - Arguments to create many Users.
     * @example
     * // Create many Users
     * const user = await prisma.user.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends UserCreateManyArgs>(args?: SelectSubset<T, UserCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many Users and returns the data saved in the database.
     * @param {UserCreateManyAndReturnArgs} args - Arguments to create many Users.
     * @example
     * // Create many Users
     * const user = await prisma.user.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many Users and only return the `id`
     * const userWithIdOnly = await prisma.user.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends UserCreateManyAndReturnArgs>(args?: SelectSubset<T, UserCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a User.
     * @param {UserDeleteArgs} args - Arguments to delete one User.
     * @example
     * // Delete one User
     * const User = await prisma.user.delete({
     *   where: {
     *     // ... filter to delete one User
     *   }
     * })
     * 
     */
    delete<T extends UserDeleteArgs>(args: SelectSubset<T, UserDeleteArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one User.
     * @param {UserUpdateArgs} args - Arguments to update one User.
     * @example
     * // Update one User
     * const user = await prisma.user.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends UserUpdateArgs>(args: SelectSubset<T, UserUpdateArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more Users.
     * @param {UserDeleteManyArgs} args - Arguments to filter Users to delete.
     * @example
     * // Delete a few Users
     * const { count } = await prisma.user.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends UserDeleteManyArgs>(args?: SelectSubset<T, UserDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more Users.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {UserUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many Users
     * const user = await prisma.user.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends UserUpdateManyArgs>(args: SelectSubset<T, UserUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more Users and returns the data updated in the database.
     * @param {UserUpdateManyAndReturnArgs} args - Arguments to update many Users.
     * @example
     * // Update many Users
     * const user = await prisma.user.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more Users and only return the `id`
     * const userWithIdOnly = await prisma.user.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends UserUpdateManyAndReturnArgs>(args: SelectSubset<T, UserUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one User.
     * @param {UserUpsertArgs} args - Arguments to update or create a User.
     * @example
     * // Update or create a User
     * const user = await prisma.user.upsert({
     *   create: {
     *     // ... data to create a User
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the User we want to update
     *   }
     * })
     */
    upsert<T extends UserUpsertArgs>(args: SelectSubset<T, UserUpsertArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of Users.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {UserCountArgs} args - Arguments to filter Users to count.
     * @example
     * // Count the number of Users
     * const count = await prisma.user.count({
     *   where: {
     *     // ... the filter for the Users we want to count
     *   }
     * })
    **/
    count<T extends UserCountArgs>(
      args?: Subset<T, UserCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], UserCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a User.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {UserAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends UserAggregateArgs>(args: Subset<T, UserAggregateArgs>): Prisma.PrismaPromise<GetUserAggregateType<T>>

    /**
     * Group by User.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {UserGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends UserGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: UserGroupByArgs['orderBy'] }
        : { orderBy?: UserGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, UserGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetUserGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the User model
   */
  readonly fields: UserFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for User.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__UserClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    consciousnessProfile<T extends User$consciousnessProfileArgs<ExtArgs> = {}>(args?: Subset<T, User$consciousnessProfileArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>
    bucketDrops<T extends User$bucketDropsArgs<ExtArgs> = {}>(args?: Subset<T, User$bucketDropsArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    tapestryNodes<T extends User$tapestryNodesArgs<ExtArgs> = {}>(args?: Subset<T, User$tapestryNodesArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    tribunalSessions<T extends User$tribunalSessionsArgs<ExtArgs> = {}>(args?: Subset<T, User$tribunalSessionsArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    consciousnessMetrics<T extends User$consciousnessMetricsArgs<ExtArgs> = {}>(args?: Subset<T, User$consciousnessMetricsArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    musicalDnaAnalyses<T extends User$musicalDnaAnalysesArgs<ExtArgs> = {}>(args?: Subset<T, User$musicalDnaAnalysesArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    empowermentEvents<T extends User$empowermentEventsArgs<ExtArgs> = {}>(args?: Subset<T, User$empowermentEventsArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    subscription<T extends User$subscriptionArgs<ExtArgs> = {}>(args?: Subset<T, User$subscriptionArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the User model
   */
  interface UserFieldRefs {
    readonly id: FieldRef<"User", 'String'>
    readonly clerkId: FieldRef<"User", 'String'>
    readonly email: FieldRef<"User", 'String'>
    readonly username: FieldRef<"User", 'String'>
    readonly createdAt: FieldRef<"User", 'DateTime'>
    readonly updatedAt: FieldRef<"User", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * User findUnique
   */
  export type UserFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * Filter, which User to fetch.
     */
    where: UserWhereUniqueInput
  }

  /**
   * User findUniqueOrThrow
   */
  export type UserFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * Filter, which User to fetch.
     */
    where: UserWhereUniqueInput
  }

  /**
   * User findFirst
   */
  export type UserFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * Filter, which User to fetch.
     */
    where?: UserWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Users to fetch.
     */
    orderBy?: UserOrderByWithRelationInput | UserOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for Users.
     */
    cursor?: UserWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Users from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Users.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of Users.
     */
    distinct?: UserScalarFieldEnum | UserScalarFieldEnum[]
  }

  /**
   * User findFirstOrThrow
   */
  export type UserFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * Filter, which User to fetch.
     */
    where?: UserWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Users to fetch.
     */
    orderBy?: UserOrderByWithRelationInput | UserOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for Users.
     */
    cursor?: UserWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Users from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Users.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of Users.
     */
    distinct?: UserScalarFieldEnum | UserScalarFieldEnum[]
  }

  /**
   * User findMany
   */
  export type UserFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * Filter, which Users to fetch.
     */
    where?: UserWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Users to fetch.
     */
    orderBy?: UserOrderByWithRelationInput | UserOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing Users.
     */
    cursor?: UserWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Users from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Users.
     */
    skip?: number
    distinct?: UserScalarFieldEnum | UserScalarFieldEnum[]
  }

  /**
   * User create
   */
  export type UserCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * The data needed to create a User.
     */
    data: XOR<UserCreateInput, UserUncheckedCreateInput>
  }

  /**
   * User createMany
   */
  export type UserCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many Users.
     */
    data: UserCreateManyInput | UserCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * User createManyAndReturn
   */
  export type UserCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * The data used to create many Users.
     */
    data: UserCreateManyInput | UserCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * User update
   */
  export type UserUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * The data needed to update a User.
     */
    data: XOR<UserUpdateInput, UserUncheckedUpdateInput>
    /**
     * Choose, which User to update.
     */
    where: UserWhereUniqueInput
  }

  /**
   * User updateMany
   */
  export type UserUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update Users.
     */
    data: XOR<UserUpdateManyMutationInput, UserUncheckedUpdateManyInput>
    /**
     * Filter which Users to update
     */
    where?: UserWhereInput
    /**
     * Limit how many Users to update.
     */
    limit?: number
  }

  /**
   * User updateManyAndReturn
   */
  export type UserUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * The data used to update Users.
     */
    data: XOR<UserUpdateManyMutationInput, UserUncheckedUpdateManyInput>
    /**
     * Filter which Users to update
     */
    where?: UserWhereInput
    /**
     * Limit how many Users to update.
     */
    limit?: number
  }

  /**
   * User upsert
   */
  export type UserUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * The filter to search for the User to update in case it exists.
     */
    where: UserWhereUniqueInput
    /**
     * In case the User found by the `where` argument doesn't exist, create a new User with this data.
     */
    create: XOR<UserCreateInput, UserUncheckedCreateInput>
    /**
     * In case the User was found with the provided `where` argument, update it with this data.
     */
    update: XOR<UserUpdateInput, UserUncheckedUpdateInput>
  }

  /**
   * User delete
   */
  export type UserDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
    /**
     * Filter which User to delete.
     */
    where: UserWhereUniqueInput
  }

  /**
   * User deleteMany
   */
  export type UserDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which Users to delete
     */
    where?: UserWhereInput
    /**
     * Limit how many Users to delete.
     */
    limit?: number
  }

  /**
   * User.consciousnessProfile
   */
  export type User$consciousnessProfileArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    where?: ConsciousnessProfileWhereInput
  }

  /**
   * User.bucketDrops
   */
  export type User$bucketDropsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    where?: BucketDropWhereInput
    orderBy?: BucketDropOrderByWithRelationInput | BucketDropOrderByWithRelationInput[]
    cursor?: BucketDropWhereUniqueInput
    take?: number
    skip?: number
    distinct?: BucketDropScalarFieldEnum | BucketDropScalarFieldEnum[]
  }

  /**
   * User.tapestryNodes
   */
  export type User$tapestryNodesArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    where?: TapestryNodeWhereInput
    orderBy?: TapestryNodeOrderByWithRelationInput | TapestryNodeOrderByWithRelationInput[]
    cursor?: TapestryNodeWhereUniqueInput
    take?: number
    skip?: number
    distinct?: TapestryNodeScalarFieldEnum | TapestryNodeScalarFieldEnum[]
  }

  /**
   * User.tribunalSessions
   */
  export type User$tribunalSessionsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    where?: TribunalSessionWhereInput
    orderBy?: TribunalSessionOrderByWithRelationInput | TribunalSessionOrderByWithRelationInput[]
    cursor?: TribunalSessionWhereUniqueInput
    take?: number
    skip?: number
    distinct?: TribunalSessionScalarFieldEnum | TribunalSessionScalarFieldEnum[]
  }

  /**
   * User.consciousnessMetrics
   */
  export type User$consciousnessMetricsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    where?: ConsciousnessMetricWhereInput
    orderBy?: ConsciousnessMetricOrderByWithRelationInput | ConsciousnessMetricOrderByWithRelationInput[]
    cursor?: ConsciousnessMetricWhereUniqueInput
    take?: number
    skip?: number
    distinct?: ConsciousnessMetricScalarFieldEnum | ConsciousnessMetricScalarFieldEnum[]
  }

  /**
   * User.musicalDnaAnalyses
   */
  export type User$musicalDnaAnalysesArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    where?: MusicalDnaAnalysisWhereInput
    orderBy?: MusicalDnaAnalysisOrderByWithRelationInput | MusicalDnaAnalysisOrderByWithRelationInput[]
    cursor?: MusicalDnaAnalysisWhereUniqueInput
    take?: number
    skip?: number
    distinct?: MusicalDnaAnalysisScalarFieldEnum | MusicalDnaAnalysisScalarFieldEnum[]
  }

  /**
   * User.empowermentEvents
   */
  export type User$empowermentEventsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    where?: EmpowermentEventWhereInput
    orderBy?: EmpowermentEventOrderByWithRelationInput | EmpowermentEventOrderByWithRelationInput[]
    cursor?: EmpowermentEventWhereUniqueInput
    take?: number
    skip?: number
    distinct?: EmpowermentEventScalarFieldEnum | EmpowermentEventScalarFieldEnum[]
  }

  /**
   * User.subscription
   */
  export type User$subscriptionArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    where?: SubscriptionWhereInput
  }

  /**
   * User without action
   */
  export type UserDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the User
     */
    select?: UserSelect<ExtArgs> | null
    /**
     * Omit specific fields from the User
     */
    omit?: UserOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: UserInclude<ExtArgs> | null
  }


  /**
   * Model ConsciousnessProfile
   */

  export type AggregateConsciousnessProfile = {
    _count: ConsciousnessProfileCountAggregateOutputType | null
    _avg: ConsciousnessProfileAvgAggregateOutputType | null
    _sum: ConsciousnessProfileSumAggregateOutputType | null
    _min: ConsciousnessProfileMinAggregateOutputType | null
    _max: ConsciousnessProfileMaxAggregateOutputType | null
  }

  export type ConsciousnessProfileAvgAggregateOutputType = {
    plkResonanceScore: number | null
    empowermentLevel: number | null
    consciousnessCoherence: number | null
    authenticityScore: number | null
    revolutionaryPotential: number | null
  }

  export type ConsciousnessProfileSumAggregateOutputType = {
    plkResonanceScore: number | null
    empowermentLevel: number | null
    consciousnessCoherence: number | null
    authenticityScore: number | null
    revolutionaryPotential: number | null
  }

  export type ConsciousnessProfileMinAggregateOutputType = {
    id: string | null
    userId: string | null
    plkVersion: string | null
    plkResonanceScore: number | null
    plkProcessingStyle: string | null
    empowermentLevel: number | null
    consciousnessCoherence: number | null
    authenticityScore: number | null
    consciousnessGrade: string | null
    foundationalTruth: string | null
    coreWisdom: string | null
    revolutionaryPotential: number | null
    chaosCurrentIdentified: boolean | null
    jazzFrequency: string | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type ConsciousnessProfileMaxAggregateOutputType = {
    id: string | null
    userId: string | null
    plkVersion: string | null
    plkResonanceScore: number | null
    plkProcessingStyle: string | null
    empowermentLevel: number | null
    consciousnessCoherence: number | null
    authenticityScore: number | null
    consciousnessGrade: string | null
    foundationalTruth: string | null
    coreWisdom: string | null
    revolutionaryPotential: number | null
    chaosCurrentIdentified: boolean | null
    jazzFrequency: string | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type ConsciousnessProfileCountAggregateOutputType = {
    id: number
    userId: number
    plkVersion: number
    plkMetaphorPatterns: number
    plkCommunicationStyle: number
    plkResonanceScore: number
    plkProcessingStyle: number
    adhdIndicators: number
    autismIndicators: number
    cognitiveStrengths: number
    processingPreferences: number
    attentionPatterns: number
    hyperfocusAreas: number
    executiveFunctionMap: number
    empowermentLevel: number
    consciousnessCoherence: number
    authenticityScore: number
    growthTrajectory: number
    consciousnessGrade: number
    foundationalTruth: number
    coreWisdom: number
    revolutionaryPotential: number
    chaosCurrentIdentified: number
    jazzFrequency: number
    createdAt: number
    updatedAt: number
    _all: number
  }


  export type ConsciousnessProfileAvgAggregateInputType = {
    plkResonanceScore?: true
    empowermentLevel?: true
    consciousnessCoherence?: true
    authenticityScore?: true
    revolutionaryPotential?: true
  }

  export type ConsciousnessProfileSumAggregateInputType = {
    plkResonanceScore?: true
    empowermentLevel?: true
    consciousnessCoherence?: true
    authenticityScore?: true
    revolutionaryPotential?: true
  }

  export type ConsciousnessProfileMinAggregateInputType = {
    id?: true
    userId?: true
    plkVersion?: true
    plkResonanceScore?: true
    plkProcessingStyle?: true
    empowermentLevel?: true
    consciousnessCoherence?: true
    authenticityScore?: true
    consciousnessGrade?: true
    foundationalTruth?: true
    coreWisdom?: true
    revolutionaryPotential?: true
    chaosCurrentIdentified?: true
    jazzFrequency?: true
    createdAt?: true
    updatedAt?: true
  }

  export type ConsciousnessProfileMaxAggregateInputType = {
    id?: true
    userId?: true
    plkVersion?: true
    plkResonanceScore?: true
    plkProcessingStyle?: true
    empowermentLevel?: true
    consciousnessCoherence?: true
    authenticityScore?: true
    consciousnessGrade?: true
    foundationalTruth?: true
    coreWisdom?: true
    revolutionaryPotential?: true
    chaosCurrentIdentified?: true
    jazzFrequency?: true
    createdAt?: true
    updatedAt?: true
  }

  export type ConsciousnessProfileCountAggregateInputType = {
    id?: true
    userId?: true
    plkVersion?: true
    plkMetaphorPatterns?: true
    plkCommunicationStyle?: true
    plkResonanceScore?: true
    plkProcessingStyle?: true
    adhdIndicators?: true
    autismIndicators?: true
    cognitiveStrengths?: true
    processingPreferences?: true
    attentionPatterns?: true
    hyperfocusAreas?: true
    executiveFunctionMap?: true
    empowermentLevel?: true
    consciousnessCoherence?: true
    authenticityScore?: true
    growthTrajectory?: true
    consciousnessGrade?: true
    foundationalTruth?: true
    coreWisdom?: true
    revolutionaryPotential?: true
    chaosCurrentIdentified?: true
    jazzFrequency?: true
    createdAt?: true
    updatedAt?: true
    _all?: true
  }

  export type ConsciousnessProfileAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which ConsciousnessProfile to aggregate.
     */
    where?: ConsciousnessProfileWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of ConsciousnessProfiles to fetch.
     */
    orderBy?: ConsciousnessProfileOrderByWithRelationInput | ConsciousnessProfileOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: ConsciousnessProfileWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` ConsciousnessProfiles from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` ConsciousnessProfiles.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned ConsciousnessProfiles
    **/
    _count?: true | ConsciousnessProfileCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: ConsciousnessProfileAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: ConsciousnessProfileSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: ConsciousnessProfileMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: ConsciousnessProfileMaxAggregateInputType
  }

  export type GetConsciousnessProfileAggregateType<T extends ConsciousnessProfileAggregateArgs> = {
        [P in keyof T & keyof AggregateConsciousnessProfile]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateConsciousnessProfile[P]>
      : GetScalarType<T[P], AggregateConsciousnessProfile[P]>
  }




  export type ConsciousnessProfileGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: ConsciousnessProfileWhereInput
    orderBy?: ConsciousnessProfileOrderByWithAggregationInput | ConsciousnessProfileOrderByWithAggregationInput[]
    by: ConsciousnessProfileScalarFieldEnum[] | ConsciousnessProfileScalarFieldEnum
    having?: ConsciousnessProfileScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: ConsciousnessProfileCountAggregateInputType | true
    _avg?: ConsciousnessProfileAvgAggregateInputType
    _sum?: ConsciousnessProfileSumAggregateInputType
    _min?: ConsciousnessProfileMinAggregateInputType
    _max?: ConsciousnessProfileMaxAggregateInputType
  }

  export type ConsciousnessProfileGroupByOutputType = {
    id: string
    userId: string
    plkVersion: string
    plkMetaphorPatterns: JsonValue
    plkCommunicationStyle: JsonValue
    plkResonanceScore: number
    plkProcessingStyle: string | null
    adhdIndicators: JsonValue
    autismIndicators: JsonValue
    cognitiveStrengths: JsonValue
    processingPreferences: JsonValue
    attentionPatterns: JsonValue
    hyperfocusAreas: string[]
    executiveFunctionMap: JsonValue
    empowermentLevel: number
    consciousnessCoherence: number
    authenticityScore: number
    growthTrajectory: JsonValue
    consciousnessGrade: string
    foundationalTruth: string | null
    coreWisdom: string | null
    revolutionaryPotential: number
    chaosCurrentIdentified: boolean
    jazzFrequency: string | null
    createdAt: Date
    updatedAt: Date
    _count: ConsciousnessProfileCountAggregateOutputType | null
    _avg: ConsciousnessProfileAvgAggregateOutputType | null
    _sum: ConsciousnessProfileSumAggregateOutputType | null
    _min: ConsciousnessProfileMinAggregateOutputType | null
    _max: ConsciousnessProfileMaxAggregateOutputType | null
  }

  type GetConsciousnessProfileGroupByPayload<T extends ConsciousnessProfileGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<ConsciousnessProfileGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof ConsciousnessProfileGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], ConsciousnessProfileGroupByOutputType[P]>
            : GetScalarType<T[P], ConsciousnessProfileGroupByOutputType[P]>
        }
      >
    >


  export type ConsciousnessProfileSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    plkVersion?: boolean
    plkMetaphorPatterns?: boolean
    plkCommunicationStyle?: boolean
    plkResonanceScore?: boolean
    plkProcessingStyle?: boolean
    adhdIndicators?: boolean
    autismIndicators?: boolean
    cognitiveStrengths?: boolean
    processingPreferences?: boolean
    attentionPatterns?: boolean
    hyperfocusAreas?: boolean
    executiveFunctionMap?: boolean
    empowermentLevel?: boolean
    consciousnessCoherence?: boolean
    authenticityScore?: boolean
    growthTrajectory?: boolean
    consciousnessGrade?: boolean
    foundationalTruth?: boolean
    coreWisdom?: boolean
    revolutionaryPotential?: boolean
    chaosCurrentIdentified?: boolean
    jazzFrequency?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["consciousnessProfile"]>

  export type ConsciousnessProfileSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    plkVersion?: boolean
    plkMetaphorPatterns?: boolean
    plkCommunicationStyle?: boolean
    plkResonanceScore?: boolean
    plkProcessingStyle?: boolean
    adhdIndicators?: boolean
    autismIndicators?: boolean
    cognitiveStrengths?: boolean
    processingPreferences?: boolean
    attentionPatterns?: boolean
    hyperfocusAreas?: boolean
    executiveFunctionMap?: boolean
    empowermentLevel?: boolean
    consciousnessCoherence?: boolean
    authenticityScore?: boolean
    growthTrajectory?: boolean
    consciousnessGrade?: boolean
    foundationalTruth?: boolean
    coreWisdom?: boolean
    revolutionaryPotential?: boolean
    chaosCurrentIdentified?: boolean
    jazzFrequency?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["consciousnessProfile"]>

  export type ConsciousnessProfileSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    plkVersion?: boolean
    plkMetaphorPatterns?: boolean
    plkCommunicationStyle?: boolean
    plkResonanceScore?: boolean
    plkProcessingStyle?: boolean
    adhdIndicators?: boolean
    autismIndicators?: boolean
    cognitiveStrengths?: boolean
    processingPreferences?: boolean
    attentionPatterns?: boolean
    hyperfocusAreas?: boolean
    executiveFunctionMap?: boolean
    empowermentLevel?: boolean
    consciousnessCoherence?: boolean
    authenticityScore?: boolean
    growthTrajectory?: boolean
    consciousnessGrade?: boolean
    foundationalTruth?: boolean
    coreWisdom?: boolean
    revolutionaryPotential?: boolean
    chaosCurrentIdentified?: boolean
    jazzFrequency?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["consciousnessProfile"]>

  export type ConsciousnessProfileSelectScalar = {
    id?: boolean
    userId?: boolean
    plkVersion?: boolean
    plkMetaphorPatterns?: boolean
    plkCommunicationStyle?: boolean
    plkResonanceScore?: boolean
    plkProcessingStyle?: boolean
    adhdIndicators?: boolean
    autismIndicators?: boolean
    cognitiveStrengths?: boolean
    processingPreferences?: boolean
    attentionPatterns?: boolean
    hyperfocusAreas?: boolean
    executiveFunctionMap?: boolean
    empowermentLevel?: boolean
    consciousnessCoherence?: boolean
    authenticityScore?: boolean
    growthTrajectory?: boolean
    consciousnessGrade?: boolean
    foundationalTruth?: boolean
    coreWisdom?: boolean
    revolutionaryPotential?: boolean
    chaosCurrentIdentified?: boolean
    jazzFrequency?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }

  export type ConsciousnessProfileOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "userId" | "plkVersion" | "plkMetaphorPatterns" | "plkCommunicationStyle" | "plkResonanceScore" | "plkProcessingStyle" | "adhdIndicators" | "autismIndicators" | "cognitiveStrengths" | "processingPreferences" | "attentionPatterns" | "hyperfocusAreas" | "executiveFunctionMap" | "empowermentLevel" | "consciousnessCoherence" | "authenticityScore" | "growthTrajectory" | "consciousnessGrade" | "foundationalTruth" | "coreWisdom" | "revolutionaryPotential" | "chaosCurrentIdentified" | "jazzFrequency" | "createdAt" | "updatedAt", ExtArgs["result"]["consciousnessProfile"]>
  export type ConsciousnessProfileInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type ConsciousnessProfileIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type ConsciousnessProfileIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }

  export type $ConsciousnessProfilePayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "ConsciousnessProfile"
    objects: {
      user: Prisma.$UserPayload<ExtArgs>
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      userId: string
      plkVersion: string
      plkMetaphorPatterns: Prisma.JsonValue
      plkCommunicationStyle: Prisma.JsonValue
      plkResonanceScore: number
      plkProcessingStyle: string | null
      adhdIndicators: Prisma.JsonValue
      autismIndicators: Prisma.JsonValue
      cognitiveStrengths: Prisma.JsonValue
      processingPreferences: Prisma.JsonValue
      attentionPatterns: Prisma.JsonValue
      hyperfocusAreas: string[]
      executiveFunctionMap: Prisma.JsonValue
      empowermentLevel: number
      consciousnessCoherence: number
      authenticityScore: number
      growthTrajectory: Prisma.JsonValue
      consciousnessGrade: string
      foundationalTruth: string | null
      coreWisdom: string | null
      revolutionaryPotential: number
      chaosCurrentIdentified: boolean
      jazzFrequency: string | null
      createdAt: Date
      updatedAt: Date
    }, ExtArgs["result"]["consciousnessProfile"]>
    composites: {}
  }

  type ConsciousnessProfileGetPayload<S extends boolean | null | undefined | ConsciousnessProfileDefaultArgs> = $Result.GetResult<Prisma.$ConsciousnessProfilePayload, S>

  type ConsciousnessProfileCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<ConsciousnessProfileFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: ConsciousnessProfileCountAggregateInputType | true
    }

  export interface ConsciousnessProfileDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['ConsciousnessProfile'], meta: { name: 'ConsciousnessProfile' } }
    /**
     * Find zero or one ConsciousnessProfile that matches the filter.
     * @param {ConsciousnessProfileFindUniqueArgs} args - Arguments to find a ConsciousnessProfile
     * @example
     * // Get one ConsciousnessProfile
     * const consciousnessProfile = await prisma.consciousnessProfile.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends ConsciousnessProfileFindUniqueArgs>(args: SelectSubset<T, ConsciousnessProfileFindUniqueArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one ConsciousnessProfile that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {ConsciousnessProfileFindUniqueOrThrowArgs} args - Arguments to find a ConsciousnessProfile
     * @example
     * // Get one ConsciousnessProfile
     * const consciousnessProfile = await prisma.consciousnessProfile.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends ConsciousnessProfileFindUniqueOrThrowArgs>(args: SelectSubset<T, ConsciousnessProfileFindUniqueOrThrowArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first ConsciousnessProfile that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessProfileFindFirstArgs} args - Arguments to find a ConsciousnessProfile
     * @example
     * // Get one ConsciousnessProfile
     * const consciousnessProfile = await prisma.consciousnessProfile.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends ConsciousnessProfileFindFirstArgs>(args?: SelectSubset<T, ConsciousnessProfileFindFirstArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first ConsciousnessProfile that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessProfileFindFirstOrThrowArgs} args - Arguments to find a ConsciousnessProfile
     * @example
     * // Get one ConsciousnessProfile
     * const consciousnessProfile = await prisma.consciousnessProfile.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends ConsciousnessProfileFindFirstOrThrowArgs>(args?: SelectSubset<T, ConsciousnessProfileFindFirstOrThrowArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more ConsciousnessProfiles that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessProfileFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all ConsciousnessProfiles
     * const consciousnessProfiles = await prisma.consciousnessProfile.findMany()
     * 
     * // Get first 10 ConsciousnessProfiles
     * const consciousnessProfiles = await prisma.consciousnessProfile.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const consciousnessProfileWithIdOnly = await prisma.consciousnessProfile.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends ConsciousnessProfileFindManyArgs>(args?: SelectSubset<T, ConsciousnessProfileFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a ConsciousnessProfile.
     * @param {ConsciousnessProfileCreateArgs} args - Arguments to create a ConsciousnessProfile.
     * @example
     * // Create one ConsciousnessProfile
     * const ConsciousnessProfile = await prisma.consciousnessProfile.create({
     *   data: {
     *     // ... data to create a ConsciousnessProfile
     *   }
     * })
     * 
     */
    create<T extends ConsciousnessProfileCreateArgs>(args: SelectSubset<T, ConsciousnessProfileCreateArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many ConsciousnessProfiles.
     * @param {ConsciousnessProfileCreateManyArgs} args - Arguments to create many ConsciousnessProfiles.
     * @example
     * // Create many ConsciousnessProfiles
     * const consciousnessProfile = await prisma.consciousnessProfile.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends ConsciousnessProfileCreateManyArgs>(args?: SelectSubset<T, ConsciousnessProfileCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many ConsciousnessProfiles and returns the data saved in the database.
     * @param {ConsciousnessProfileCreateManyAndReturnArgs} args - Arguments to create many ConsciousnessProfiles.
     * @example
     * // Create many ConsciousnessProfiles
     * const consciousnessProfile = await prisma.consciousnessProfile.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many ConsciousnessProfiles and only return the `id`
     * const consciousnessProfileWithIdOnly = await prisma.consciousnessProfile.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends ConsciousnessProfileCreateManyAndReturnArgs>(args?: SelectSubset<T, ConsciousnessProfileCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a ConsciousnessProfile.
     * @param {ConsciousnessProfileDeleteArgs} args - Arguments to delete one ConsciousnessProfile.
     * @example
     * // Delete one ConsciousnessProfile
     * const ConsciousnessProfile = await prisma.consciousnessProfile.delete({
     *   where: {
     *     // ... filter to delete one ConsciousnessProfile
     *   }
     * })
     * 
     */
    delete<T extends ConsciousnessProfileDeleteArgs>(args: SelectSubset<T, ConsciousnessProfileDeleteArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one ConsciousnessProfile.
     * @param {ConsciousnessProfileUpdateArgs} args - Arguments to update one ConsciousnessProfile.
     * @example
     * // Update one ConsciousnessProfile
     * const consciousnessProfile = await prisma.consciousnessProfile.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends ConsciousnessProfileUpdateArgs>(args: SelectSubset<T, ConsciousnessProfileUpdateArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more ConsciousnessProfiles.
     * @param {ConsciousnessProfileDeleteManyArgs} args - Arguments to filter ConsciousnessProfiles to delete.
     * @example
     * // Delete a few ConsciousnessProfiles
     * const { count } = await prisma.consciousnessProfile.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends ConsciousnessProfileDeleteManyArgs>(args?: SelectSubset<T, ConsciousnessProfileDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more ConsciousnessProfiles.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessProfileUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many ConsciousnessProfiles
     * const consciousnessProfile = await prisma.consciousnessProfile.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends ConsciousnessProfileUpdateManyArgs>(args: SelectSubset<T, ConsciousnessProfileUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more ConsciousnessProfiles and returns the data updated in the database.
     * @param {ConsciousnessProfileUpdateManyAndReturnArgs} args - Arguments to update many ConsciousnessProfiles.
     * @example
     * // Update many ConsciousnessProfiles
     * const consciousnessProfile = await prisma.consciousnessProfile.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more ConsciousnessProfiles and only return the `id`
     * const consciousnessProfileWithIdOnly = await prisma.consciousnessProfile.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends ConsciousnessProfileUpdateManyAndReturnArgs>(args: SelectSubset<T, ConsciousnessProfileUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one ConsciousnessProfile.
     * @param {ConsciousnessProfileUpsertArgs} args - Arguments to update or create a ConsciousnessProfile.
     * @example
     * // Update or create a ConsciousnessProfile
     * const consciousnessProfile = await prisma.consciousnessProfile.upsert({
     *   create: {
     *     // ... data to create a ConsciousnessProfile
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the ConsciousnessProfile we want to update
     *   }
     * })
     */
    upsert<T extends ConsciousnessProfileUpsertArgs>(args: SelectSubset<T, ConsciousnessProfileUpsertArgs<ExtArgs>>): Prisma__ConsciousnessProfileClient<$Result.GetResult<Prisma.$ConsciousnessProfilePayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of ConsciousnessProfiles.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessProfileCountArgs} args - Arguments to filter ConsciousnessProfiles to count.
     * @example
     * // Count the number of ConsciousnessProfiles
     * const count = await prisma.consciousnessProfile.count({
     *   where: {
     *     // ... the filter for the ConsciousnessProfiles we want to count
     *   }
     * })
    **/
    count<T extends ConsciousnessProfileCountArgs>(
      args?: Subset<T, ConsciousnessProfileCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], ConsciousnessProfileCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a ConsciousnessProfile.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessProfileAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends ConsciousnessProfileAggregateArgs>(args: Subset<T, ConsciousnessProfileAggregateArgs>): Prisma.PrismaPromise<GetConsciousnessProfileAggregateType<T>>

    /**
     * Group by ConsciousnessProfile.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessProfileGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends ConsciousnessProfileGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: ConsciousnessProfileGroupByArgs['orderBy'] }
        : { orderBy?: ConsciousnessProfileGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, ConsciousnessProfileGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetConsciousnessProfileGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the ConsciousnessProfile model
   */
  readonly fields: ConsciousnessProfileFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for ConsciousnessProfile.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__ConsciousnessProfileClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    user<T extends UserDefaultArgs<ExtArgs> = {}>(args?: Subset<T, UserDefaultArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the ConsciousnessProfile model
   */
  interface ConsciousnessProfileFieldRefs {
    readonly id: FieldRef<"ConsciousnessProfile", 'String'>
    readonly userId: FieldRef<"ConsciousnessProfile", 'String'>
    readonly plkVersion: FieldRef<"ConsciousnessProfile", 'String'>
    readonly plkMetaphorPatterns: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly plkCommunicationStyle: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly plkResonanceScore: FieldRef<"ConsciousnessProfile", 'Float'>
    readonly plkProcessingStyle: FieldRef<"ConsciousnessProfile", 'String'>
    readonly adhdIndicators: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly autismIndicators: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly cognitiveStrengths: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly processingPreferences: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly attentionPatterns: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly hyperfocusAreas: FieldRef<"ConsciousnessProfile", 'String[]'>
    readonly executiveFunctionMap: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly empowermentLevel: FieldRef<"ConsciousnessProfile", 'Int'>
    readonly consciousnessCoherence: FieldRef<"ConsciousnessProfile", 'Float'>
    readonly authenticityScore: FieldRef<"ConsciousnessProfile", 'Float'>
    readonly growthTrajectory: FieldRef<"ConsciousnessProfile", 'Json'>
    readonly consciousnessGrade: FieldRef<"ConsciousnessProfile", 'String'>
    readonly foundationalTruth: FieldRef<"ConsciousnessProfile", 'String'>
    readonly coreWisdom: FieldRef<"ConsciousnessProfile", 'String'>
    readonly revolutionaryPotential: FieldRef<"ConsciousnessProfile", 'Float'>
    readonly chaosCurrentIdentified: FieldRef<"ConsciousnessProfile", 'Boolean'>
    readonly jazzFrequency: FieldRef<"ConsciousnessProfile", 'String'>
    readonly createdAt: FieldRef<"ConsciousnessProfile", 'DateTime'>
    readonly updatedAt: FieldRef<"ConsciousnessProfile", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * ConsciousnessProfile findUnique
   */
  export type ConsciousnessProfileFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessProfile to fetch.
     */
    where: ConsciousnessProfileWhereUniqueInput
  }

  /**
   * ConsciousnessProfile findUniqueOrThrow
   */
  export type ConsciousnessProfileFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessProfile to fetch.
     */
    where: ConsciousnessProfileWhereUniqueInput
  }

  /**
   * ConsciousnessProfile findFirst
   */
  export type ConsciousnessProfileFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessProfile to fetch.
     */
    where?: ConsciousnessProfileWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of ConsciousnessProfiles to fetch.
     */
    orderBy?: ConsciousnessProfileOrderByWithRelationInput | ConsciousnessProfileOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for ConsciousnessProfiles.
     */
    cursor?: ConsciousnessProfileWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` ConsciousnessProfiles from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` ConsciousnessProfiles.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of ConsciousnessProfiles.
     */
    distinct?: ConsciousnessProfileScalarFieldEnum | ConsciousnessProfileScalarFieldEnum[]
  }

  /**
   * ConsciousnessProfile findFirstOrThrow
   */
  export type ConsciousnessProfileFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessProfile to fetch.
     */
    where?: ConsciousnessProfileWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of ConsciousnessProfiles to fetch.
     */
    orderBy?: ConsciousnessProfileOrderByWithRelationInput | ConsciousnessProfileOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for ConsciousnessProfiles.
     */
    cursor?: ConsciousnessProfileWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` ConsciousnessProfiles from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` ConsciousnessProfiles.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of ConsciousnessProfiles.
     */
    distinct?: ConsciousnessProfileScalarFieldEnum | ConsciousnessProfileScalarFieldEnum[]
  }

  /**
   * ConsciousnessProfile findMany
   */
  export type ConsciousnessProfileFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessProfiles to fetch.
     */
    where?: ConsciousnessProfileWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of ConsciousnessProfiles to fetch.
     */
    orderBy?: ConsciousnessProfileOrderByWithRelationInput | ConsciousnessProfileOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing ConsciousnessProfiles.
     */
    cursor?: ConsciousnessProfileWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` ConsciousnessProfiles from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` ConsciousnessProfiles.
     */
    skip?: number
    distinct?: ConsciousnessProfileScalarFieldEnum | ConsciousnessProfileScalarFieldEnum[]
  }

  /**
   * ConsciousnessProfile create
   */
  export type ConsciousnessProfileCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * The data needed to create a ConsciousnessProfile.
     */
    data: XOR<ConsciousnessProfileCreateInput, ConsciousnessProfileUncheckedCreateInput>
  }

  /**
   * ConsciousnessProfile createMany
   */
  export type ConsciousnessProfileCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many ConsciousnessProfiles.
     */
    data: ConsciousnessProfileCreateManyInput | ConsciousnessProfileCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * ConsciousnessProfile createManyAndReturn
   */
  export type ConsciousnessProfileCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * The data used to create many ConsciousnessProfiles.
     */
    data: ConsciousnessProfileCreateManyInput | ConsciousnessProfileCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * ConsciousnessProfile update
   */
  export type ConsciousnessProfileUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * The data needed to update a ConsciousnessProfile.
     */
    data: XOR<ConsciousnessProfileUpdateInput, ConsciousnessProfileUncheckedUpdateInput>
    /**
     * Choose, which ConsciousnessProfile to update.
     */
    where: ConsciousnessProfileWhereUniqueInput
  }

  /**
   * ConsciousnessProfile updateMany
   */
  export type ConsciousnessProfileUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update ConsciousnessProfiles.
     */
    data: XOR<ConsciousnessProfileUpdateManyMutationInput, ConsciousnessProfileUncheckedUpdateManyInput>
    /**
     * Filter which ConsciousnessProfiles to update
     */
    where?: ConsciousnessProfileWhereInput
    /**
     * Limit how many ConsciousnessProfiles to update.
     */
    limit?: number
  }

  /**
   * ConsciousnessProfile updateManyAndReturn
   */
  export type ConsciousnessProfileUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * The data used to update ConsciousnessProfiles.
     */
    data: XOR<ConsciousnessProfileUpdateManyMutationInput, ConsciousnessProfileUncheckedUpdateManyInput>
    /**
     * Filter which ConsciousnessProfiles to update
     */
    where?: ConsciousnessProfileWhereInput
    /**
     * Limit how many ConsciousnessProfiles to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * ConsciousnessProfile upsert
   */
  export type ConsciousnessProfileUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * The filter to search for the ConsciousnessProfile to update in case it exists.
     */
    where: ConsciousnessProfileWhereUniqueInput
    /**
     * In case the ConsciousnessProfile found by the `where` argument doesn't exist, create a new ConsciousnessProfile with this data.
     */
    create: XOR<ConsciousnessProfileCreateInput, ConsciousnessProfileUncheckedCreateInput>
    /**
     * In case the ConsciousnessProfile was found with the provided `where` argument, update it with this data.
     */
    update: XOR<ConsciousnessProfileUpdateInput, ConsciousnessProfileUncheckedUpdateInput>
  }

  /**
   * ConsciousnessProfile delete
   */
  export type ConsciousnessProfileDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
    /**
     * Filter which ConsciousnessProfile to delete.
     */
    where: ConsciousnessProfileWhereUniqueInput
  }

  /**
   * ConsciousnessProfile deleteMany
   */
  export type ConsciousnessProfileDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which ConsciousnessProfiles to delete
     */
    where?: ConsciousnessProfileWhereInput
    /**
     * Limit how many ConsciousnessProfiles to delete.
     */
    limit?: number
  }

  /**
   * ConsciousnessProfile without action
   */
  export type ConsciousnessProfileDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessProfile
     */
    select?: ConsciousnessProfileSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessProfile
     */
    omit?: ConsciousnessProfileOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessProfileInclude<ExtArgs> | null
  }


  /**
   * Model BucketDrop
   */

  export type AggregateBucketDrop = {
    _count: BucketDropCountAggregateOutputType | null
    _avg: BucketDropAvgAggregateOutputType | null
    _sum: BucketDropSumAggregateOutputType | null
    _min: BucketDropMinAggregateOutputType | null
    _max: BucketDropMaxAggregateOutputType | null
  }

  export type BucketDropAvgAggregateOutputType = {
    emotionalIntensity: number | null
    urgencyLevel: number | null
    cognitiveLoad: number | null
    plkResonance: number | null
  }

  export type BucketDropSumAggregateOutputType = {
    emotionalIntensity: number | null
    urgencyLevel: number | null
    cognitiveLoad: number | null
    plkResonance: number | null
  }

  export type BucketDropMinAggregateOutputType = {
    id: string | null
    userId: string | null
    content: string | null
    contentType: string | null
    emotionalIntensity: number | null
    urgencyLevel: number | null
    cognitiveLoad: number | null
    hyperfocusIndicator: boolean | null
    executiveFunctionTag: string | null
    plkResonance: number | null
    metaphorExtracted: string | null
    linguisticPattern: string | null
    status: string | null
    tapestryIntegrated: boolean | null
    tribunalReviewed: boolean | null
    capturedAt: Date | null
    updatedAt: Date | null
  }

  export type BucketDropMaxAggregateOutputType = {
    id: string | null
    userId: string | null
    content: string | null
    contentType: string | null
    emotionalIntensity: number | null
    urgencyLevel: number | null
    cognitiveLoad: number | null
    hyperfocusIndicator: boolean | null
    executiveFunctionTag: string | null
    plkResonance: number | null
    metaphorExtracted: string | null
    linguisticPattern: string | null
    status: string | null
    tapestryIntegrated: boolean | null
    tribunalReviewed: boolean | null
    capturedAt: Date | null
    updatedAt: Date | null
  }

  export type BucketDropCountAggregateOutputType = {
    id: number
    userId: number
    content: number
    contentType: number
    emotionalIntensity: number
    urgencyLevel: number
    cognitiveLoad: number
    adhdContext: number
    hyperfocusIndicator: number
    executiveFunctionTag: number
    plkResonance: number
    metaphorExtracted: number
    linguisticPattern: number
    status: number
    tapestryIntegrated: number
    tribunalReviewed: number
    capturedAt: number
    updatedAt: number
    _all: number
  }


  export type BucketDropAvgAggregateInputType = {
    emotionalIntensity?: true
    urgencyLevel?: true
    cognitiveLoad?: true
    plkResonance?: true
  }

  export type BucketDropSumAggregateInputType = {
    emotionalIntensity?: true
    urgencyLevel?: true
    cognitiveLoad?: true
    plkResonance?: true
  }

  export type BucketDropMinAggregateInputType = {
    id?: true
    userId?: true
    content?: true
    contentType?: true
    emotionalIntensity?: true
    urgencyLevel?: true
    cognitiveLoad?: true
    hyperfocusIndicator?: true
    executiveFunctionTag?: true
    plkResonance?: true
    metaphorExtracted?: true
    linguisticPattern?: true
    status?: true
    tapestryIntegrated?: true
    tribunalReviewed?: true
    capturedAt?: true
    updatedAt?: true
  }

  export type BucketDropMaxAggregateInputType = {
    id?: true
    userId?: true
    content?: true
    contentType?: true
    emotionalIntensity?: true
    urgencyLevel?: true
    cognitiveLoad?: true
    hyperfocusIndicator?: true
    executiveFunctionTag?: true
    plkResonance?: true
    metaphorExtracted?: true
    linguisticPattern?: true
    status?: true
    tapestryIntegrated?: true
    tribunalReviewed?: true
    capturedAt?: true
    updatedAt?: true
  }

  export type BucketDropCountAggregateInputType = {
    id?: true
    userId?: true
    content?: true
    contentType?: true
    emotionalIntensity?: true
    urgencyLevel?: true
    cognitiveLoad?: true
    adhdContext?: true
    hyperfocusIndicator?: true
    executiveFunctionTag?: true
    plkResonance?: true
    metaphorExtracted?: true
    linguisticPattern?: true
    status?: true
    tapestryIntegrated?: true
    tribunalReviewed?: true
    capturedAt?: true
    updatedAt?: true
    _all?: true
  }

  export type BucketDropAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which BucketDrop to aggregate.
     */
    where?: BucketDropWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of BucketDrops to fetch.
     */
    orderBy?: BucketDropOrderByWithRelationInput | BucketDropOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: BucketDropWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` BucketDrops from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` BucketDrops.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned BucketDrops
    **/
    _count?: true | BucketDropCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: BucketDropAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: BucketDropSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: BucketDropMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: BucketDropMaxAggregateInputType
  }

  export type GetBucketDropAggregateType<T extends BucketDropAggregateArgs> = {
        [P in keyof T & keyof AggregateBucketDrop]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateBucketDrop[P]>
      : GetScalarType<T[P], AggregateBucketDrop[P]>
  }




  export type BucketDropGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: BucketDropWhereInput
    orderBy?: BucketDropOrderByWithAggregationInput | BucketDropOrderByWithAggregationInput[]
    by: BucketDropScalarFieldEnum[] | BucketDropScalarFieldEnum
    having?: BucketDropScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: BucketDropCountAggregateInputType | true
    _avg?: BucketDropAvgAggregateInputType
    _sum?: BucketDropSumAggregateInputType
    _min?: BucketDropMinAggregateInputType
    _max?: BucketDropMaxAggregateInputType
  }

  export type BucketDropGroupByOutputType = {
    id: string
    userId: string
    content: string
    contentType: string
    emotionalIntensity: number
    urgencyLevel: number
    cognitiveLoad: number
    adhdContext: JsonValue
    hyperfocusIndicator: boolean
    executiveFunctionTag: string | null
    plkResonance: number
    metaphorExtracted: string | null
    linguisticPattern: string | null
    status: string
    tapestryIntegrated: boolean
    tribunalReviewed: boolean
    capturedAt: Date
    updatedAt: Date
    _count: BucketDropCountAggregateOutputType | null
    _avg: BucketDropAvgAggregateOutputType | null
    _sum: BucketDropSumAggregateOutputType | null
    _min: BucketDropMinAggregateOutputType | null
    _max: BucketDropMaxAggregateOutputType | null
  }

  type GetBucketDropGroupByPayload<T extends BucketDropGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<BucketDropGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof BucketDropGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], BucketDropGroupByOutputType[P]>
            : GetScalarType<T[P], BucketDropGroupByOutputType[P]>
        }
      >
    >


  export type BucketDropSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    content?: boolean
    contentType?: boolean
    emotionalIntensity?: boolean
    urgencyLevel?: boolean
    cognitiveLoad?: boolean
    adhdContext?: boolean
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: boolean
    plkResonance?: boolean
    metaphorExtracted?: boolean
    linguisticPattern?: boolean
    status?: boolean
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
    tapestryNodes?: boolean | BucketDrop$tapestryNodesArgs<ExtArgs>
    empowermentEvents?: boolean | BucketDrop$empowermentEventsArgs<ExtArgs>
    _count?: boolean | BucketDropCountOutputTypeDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["bucketDrop"]>

  export type BucketDropSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    content?: boolean
    contentType?: boolean
    emotionalIntensity?: boolean
    urgencyLevel?: boolean
    cognitiveLoad?: boolean
    adhdContext?: boolean
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: boolean
    plkResonance?: boolean
    metaphorExtracted?: boolean
    linguisticPattern?: boolean
    status?: boolean
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["bucketDrop"]>

  export type BucketDropSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    content?: boolean
    contentType?: boolean
    emotionalIntensity?: boolean
    urgencyLevel?: boolean
    cognitiveLoad?: boolean
    adhdContext?: boolean
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: boolean
    plkResonance?: boolean
    metaphorExtracted?: boolean
    linguisticPattern?: boolean
    status?: boolean
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["bucketDrop"]>

  export type BucketDropSelectScalar = {
    id?: boolean
    userId?: boolean
    content?: boolean
    contentType?: boolean
    emotionalIntensity?: boolean
    urgencyLevel?: boolean
    cognitiveLoad?: boolean
    adhdContext?: boolean
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: boolean
    plkResonance?: boolean
    metaphorExtracted?: boolean
    linguisticPattern?: boolean
    status?: boolean
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: boolean
    updatedAt?: boolean
  }

  export type BucketDropOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "userId" | "content" | "contentType" | "emotionalIntensity" | "urgencyLevel" | "cognitiveLoad" | "adhdContext" | "hyperfocusIndicator" | "executiveFunctionTag" | "plkResonance" | "metaphorExtracted" | "linguisticPattern" | "status" | "tapestryIntegrated" | "tribunalReviewed" | "capturedAt" | "updatedAt", ExtArgs["result"]["bucketDrop"]>
  export type BucketDropInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
    tapestryNodes?: boolean | BucketDrop$tapestryNodesArgs<ExtArgs>
    empowermentEvents?: boolean | BucketDrop$empowermentEventsArgs<ExtArgs>
    _count?: boolean | BucketDropCountOutputTypeDefaultArgs<ExtArgs>
  }
  export type BucketDropIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type BucketDropIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }

  export type $BucketDropPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "BucketDrop"
    objects: {
      user: Prisma.$UserPayload<ExtArgs>
      tapestryNodes: Prisma.$TapestryNodePayload<ExtArgs>[]
      empowermentEvents: Prisma.$EmpowermentEventPayload<ExtArgs>[]
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      userId: string
      content: string
      contentType: string
      emotionalIntensity: number
      urgencyLevel: number
      cognitiveLoad: number
      adhdContext: Prisma.JsonValue
      hyperfocusIndicator: boolean
      executiveFunctionTag: string | null
      plkResonance: number
      metaphorExtracted: string | null
      linguisticPattern: string | null
      status: string
      tapestryIntegrated: boolean
      tribunalReviewed: boolean
      capturedAt: Date
      updatedAt: Date
    }, ExtArgs["result"]["bucketDrop"]>
    composites: {}
  }

  type BucketDropGetPayload<S extends boolean | null | undefined | BucketDropDefaultArgs> = $Result.GetResult<Prisma.$BucketDropPayload, S>

  type BucketDropCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<BucketDropFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: BucketDropCountAggregateInputType | true
    }

  export interface BucketDropDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['BucketDrop'], meta: { name: 'BucketDrop' } }
    /**
     * Find zero or one BucketDrop that matches the filter.
     * @param {BucketDropFindUniqueArgs} args - Arguments to find a BucketDrop
     * @example
     * // Get one BucketDrop
     * const bucketDrop = await prisma.bucketDrop.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends BucketDropFindUniqueArgs>(args: SelectSubset<T, BucketDropFindUniqueArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one BucketDrop that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {BucketDropFindUniqueOrThrowArgs} args - Arguments to find a BucketDrop
     * @example
     * // Get one BucketDrop
     * const bucketDrop = await prisma.bucketDrop.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends BucketDropFindUniqueOrThrowArgs>(args: SelectSubset<T, BucketDropFindUniqueOrThrowArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first BucketDrop that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {BucketDropFindFirstArgs} args - Arguments to find a BucketDrop
     * @example
     * // Get one BucketDrop
     * const bucketDrop = await prisma.bucketDrop.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends BucketDropFindFirstArgs>(args?: SelectSubset<T, BucketDropFindFirstArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first BucketDrop that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {BucketDropFindFirstOrThrowArgs} args - Arguments to find a BucketDrop
     * @example
     * // Get one BucketDrop
     * const bucketDrop = await prisma.bucketDrop.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends BucketDropFindFirstOrThrowArgs>(args?: SelectSubset<T, BucketDropFindFirstOrThrowArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more BucketDrops that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {BucketDropFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all BucketDrops
     * const bucketDrops = await prisma.bucketDrop.findMany()
     * 
     * // Get first 10 BucketDrops
     * const bucketDrops = await prisma.bucketDrop.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const bucketDropWithIdOnly = await prisma.bucketDrop.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends BucketDropFindManyArgs>(args?: SelectSubset<T, BucketDropFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a BucketDrop.
     * @param {BucketDropCreateArgs} args - Arguments to create a BucketDrop.
     * @example
     * // Create one BucketDrop
     * const BucketDrop = await prisma.bucketDrop.create({
     *   data: {
     *     // ... data to create a BucketDrop
     *   }
     * })
     * 
     */
    create<T extends BucketDropCreateArgs>(args: SelectSubset<T, BucketDropCreateArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many BucketDrops.
     * @param {BucketDropCreateManyArgs} args - Arguments to create many BucketDrops.
     * @example
     * // Create many BucketDrops
     * const bucketDrop = await prisma.bucketDrop.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends BucketDropCreateManyArgs>(args?: SelectSubset<T, BucketDropCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many BucketDrops and returns the data saved in the database.
     * @param {BucketDropCreateManyAndReturnArgs} args - Arguments to create many BucketDrops.
     * @example
     * // Create many BucketDrops
     * const bucketDrop = await prisma.bucketDrop.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many BucketDrops and only return the `id`
     * const bucketDropWithIdOnly = await prisma.bucketDrop.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends BucketDropCreateManyAndReturnArgs>(args?: SelectSubset<T, BucketDropCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a BucketDrop.
     * @param {BucketDropDeleteArgs} args - Arguments to delete one BucketDrop.
     * @example
     * // Delete one BucketDrop
     * const BucketDrop = await prisma.bucketDrop.delete({
     *   where: {
     *     // ... filter to delete one BucketDrop
     *   }
     * })
     * 
     */
    delete<T extends BucketDropDeleteArgs>(args: SelectSubset<T, BucketDropDeleteArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one BucketDrop.
     * @param {BucketDropUpdateArgs} args - Arguments to update one BucketDrop.
     * @example
     * // Update one BucketDrop
     * const bucketDrop = await prisma.bucketDrop.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends BucketDropUpdateArgs>(args: SelectSubset<T, BucketDropUpdateArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more BucketDrops.
     * @param {BucketDropDeleteManyArgs} args - Arguments to filter BucketDrops to delete.
     * @example
     * // Delete a few BucketDrops
     * const { count } = await prisma.bucketDrop.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends BucketDropDeleteManyArgs>(args?: SelectSubset<T, BucketDropDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more BucketDrops.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {BucketDropUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many BucketDrops
     * const bucketDrop = await prisma.bucketDrop.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends BucketDropUpdateManyArgs>(args: SelectSubset<T, BucketDropUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more BucketDrops and returns the data updated in the database.
     * @param {BucketDropUpdateManyAndReturnArgs} args - Arguments to update many BucketDrops.
     * @example
     * // Update many BucketDrops
     * const bucketDrop = await prisma.bucketDrop.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more BucketDrops and only return the `id`
     * const bucketDropWithIdOnly = await prisma.bucketDrop.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends BucketDropUpdateManyAndReturnArgs>(args: SelectSubset<T, BucketDropUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one BucketDrop.
     * @param {BucketDropUpsertArgs} args - Arguments to update or create a BucketDrop.
     * @example
     * // Update or create a BucketDrop
     * const bucketDrop = await prisma.bucketDrop.upsert({
     *   create: {
     *     // ... data to create a BucketDrop
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the BucketDrop we want to update
     *   }
     * })
     */
    upsert<T extends BucketDropUpsertArgs>(args: SelectSubset<T, BucketDropUpsertArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of BucketDrops.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {BucketDropCountArgs} args - Arguments to filter BucketDrops to count.
     * @example
     * // Count the number of BucketDrops
     * const count = await prisma.bucketDrop.count({
     *   where: {
     *     // ... the filter for the BucketDrops we want to count
     *   }
     * })
    **/
    count<T extends BucketDropCountArgs>(
      args?: Subset<T, BucketDropCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], BucketDropCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a BucketDrop.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {BucketDropAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends BucketDropAggregateArgs>(args: Subset<T, BucketDropAggregateArgs>): Prisma.PrismaPromise<GetBucketDropAggregateType<T>>

    /**
     * Group by BucketDrop.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {BucketDropGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends BucketDropGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: BucketDropGroupByArgs['orderBy'] }
        : { orderBy?: BucketDropGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, BucketDropGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetBucketDropGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the BucketDrop model
   */
  readonly fields: BucketDropFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for BucketDrop.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__BucketDropClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    user<T extends UserDefaultArgs<ExtArgs> = {}>(args?: Subset<T, UserDefaultArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    tapestryNodes<T extends BucketDrop$tapestryNodesArgs<ExtArgs> = {}>(args?: Subset<T, BucketDrop$tapestryNodesArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    empowermentEvents<T extends BucketDrop$empowermentEventsArgs<ExtArgs> = {}>(args?: Subset<T, BucketDrop$empowermentEventsArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the BucketDrop model
   */
  interface BucketDropFieldRefs {
    readonly id: FieldRef<"BucketDrop", 'String'>
    readonly userId: FieldRef<"BucketDrop", 'String'>
    readonly content: FieldRef<"BucketDrop", 'String'>
    readonly contentType: FieldRef<"BucketDrop", 'String'>
    readonly emotionalIntensity: FieldRef<"BucketDrop", 'Float'>
    readonly urgencyLevel: FieldRef<"BucketDrop", 'Int'>
    readonly cognitiveLoad: FieldRef<"BucketDrop", 'Float'>
    readonly adhdContext: FieldRef<"BucketDrop", 'Json'>
    readonly hyperfocusIndicator: FieldRef<"BucketDrop", 'Boolean'>
    readonly executiveFunctionTag: FieldRef<"BucketDrop", 'String'>
    readonly plkResonance: FieldRef<"BucketDrop", 'Float'>
    readonly metaphorExtracted: FieldRef<"BucketDrop", 'String'>
    readonly linguisticPattern: FieldRef<"BucketDrop", 'String'>
    readonly status: FieldRef<"BucketDrop", 'String'>
    readonly tapestryIntegrated: FieldRef<"BucketDrop", 'Boolean'>
    readonly tribunalReviewed: FieldRef<"BucketDrop", 'Boolean'>
    readonly capturedAt: FieldRef<"BucketDrop", 'DateTime'>
    readonly updatedAt: FieldRef<"BucketDrop", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * BucketDrop findUnique
   */
  export type BucketDropFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * Filter, which BucketDrop to fetch.
     */
    where: BucketDropWhereUniqueInput
  }

  /**
   * BucketDrop findUniqueOrThrow
   */
  export type BucketDropFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * Filter, which BucketDrop to fetch.
     */
    where: BucketDropWhereUniqueInput
  }

  /**
   * BucketDrop findFirst
   */
  export type BucketDropFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * Filter, which BucketDrop to fetch.
     */
    where?: BucketDropWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of BucketDrops to fetch.
     */
    orderBy?: BucketDropOrderByWithRelationInput | BucketDropOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for BucketDrops.
     */
    cursor?: BucketDropWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` BucketDrops from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` BucketDrops.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of BucketDrops.
     */
    distinct?: BucketDropScalarFieldEnum | BucketDropScalarFieldEnum[]
  }

  /**
   * BucketDrop findFirstOrThrow
   */
  export type BucketDropFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * Filter, which BucketDrop to fetch.
     */
    where?: BucketDropWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of BucketDrops to fetch.
     */
    orderBy?: BucketDropOrderByWithRelationInput | BucketDropOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for BucketDrops.
     */
    cursor?: BucketDropWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` BucketDrops from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` BucketDrops.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of BucketDrops.
     */
    distinct?: BucketDropScalarFieldEnum | BucketDropScalarFieldEnum[]
  }

  /**
   * BucketDrop findMany
   */
  export type BucketDropFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * Filter, which BucketDrops to fetch.
     */
    where?: BucketDropWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of BucketDrops to fetch.
     */
    orderBy?: BucketDropOrderByWithRelationInput | BucketDropOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing BucketDrops.
     */
    cursor?: BucketDropWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` BucketDrops from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` BucketDrops.
     */
    skip?: number
    distinct?: BucketDropScalarFieldEnum | BucketDropScalarFieldEnum[]
  }

  /**
   * BucketDrop create
   */
  export type BucketDropCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * The data needed to create a BucketDrop.
     */
    data: XOR<BucketDropCreateInput, BucketDropUncheckedCreateInput>
  }

  /**
   * BucketDrop createMany
   */
  export type BucketDropCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many BucketDrops.
     */
    data: BucketDropCreateManyInput | BucketDropCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * BucketDrop createManyAndReturn
   */
  export type BucketDropCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * The data used to create many BucketDrops.
     */
    data: BucketDropCreateManyInput | BucketDropCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * BucketDrop update
   */
  export type BucketDropUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * The data needed to update a BucketDrop.
     */
    data: XOR<BucketDropUpdateInput, BucketDropUncheckedUpdateInput>
    /**
     * Choose, which BucketDrop to update.
     */
    where: BucketDropWhereUniqueInput
  }

  /**
   * BucketDrop updateMany
   */
  export type BucketDropUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update BucketDrops.
     */
    data: XOR<BucketDropUpdateManyMutationInput, BucketDropUncheckedUpdateManyInput>
    /**
     * Filter which BucketDrops to update
     */
    where?: BucketDropWhereInput
    /**
     * Limit how many BucketDrops to update.
     */
    limit?: number
  }

  /**
   * BucketDrop updateManyAndReturn
   */
  export type BucketDropUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * The data used to update BucketDrops.
     */
    data: XOR<BucketDropUpdateManyMutationInput, BucketDropUncheckedUpdateManyInput>
    /**
     * Filter which BucketDrops to update
     */
    where?: BucketDropWhereInput
    /**
     * Limit how many BucketDrops to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * BucketDrop upsert
   */
  export type BucketDropUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * The filter to search for the BucketDrop to update in case it exists.
     */
    where: BucketDropWhereUniqueInput
    /**
     * In case the BucketDrop found by the `where` argument doesn't exist, create a new BucketDrop with this data.
     */
    create: XOR<BucketDropCreateInput, BucketDropUncheckedCreateInput>
    /**
     * In case the BucketDrop was found with the provided `where` argument, update it with this data.
     */
    update: XOR<BucketDropUpdateInput, BucketDropUncheckedUpdateInput>
  }

  /**
   * BucketDrop delete
   */
  export type BucketDropDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    /**
     * Filter which BucketDrop to delete.
     */
    where: BucketDropWhereUniqueInput
  }

  /**
   * BucketDrop deleteMany
   */
  export type BucketDropDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which BucketDrops to delete
     */
    where?: BucketDropWhereInput
    /**
     * Limit how many BucketDrops to delete.
     */
    limit?: number
  }

  /**
   * BucketDrop.tapestryNodes
   */
  export type BucketDrop$tapestryNodesArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    where?: TapestryNodeWhereInput
    orderBy?: TapestryNodeOrderByWithRelationInput | TapestryNodeOrderByWithRelationInput[]
    cursor?: TapestryNodeWhereUniqueInput
    take?: number
    skip?: number
    distinct?: TapestryNodeScalarFieldEnum | TapestryNodeScalarFieldEnum[]
  }

  /**
   * BucketDrop.empowermentEvents
   */
  export type BucketDrop$empowermentEventsArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    where?: EmpowermentEventWhereInput
    orderBy?: EmpowermentEventOrderByWithRelationInput | EmpowermentEventOrderByWithRelationInput[]
    cursor?: EmpowermentEventWhereUniqueInput
    take?: number
    skip?: number
    distinct?: EmpowermentEventScalarFieldEnum | EmpowermentEventScalarFieldEnum[]
  }

  /**
   * BucketDrop without action
   */
  export type BucketDropDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
  }


  /**
   * Model TapestryNode
   */

  export type AggregateTapestryNode = {
    _count: TapestryNodeCountAggregateOutputType | null
    _avg: TapestryNodeAvgAggregateOutputType | null
    _sum: TapestryNodeSumAggregateOutputType | null
    _min: TapestryNodeMinAggregateOutputType | null
    _max: TapestryNodeMaxAggregateOutputType | null
  }

  export type TapestryNodeAvgAggregateOutputType = {
    xCoordinate: number | null
    yCoordinate: number | null
    zCoordinate: number | null
    nodeSize: number | null
    emotionalResonance: number | null
    consciousnessDepth: number | null
    growthSignificance: number | null
    connectionStrengths: number | null
    networkCentrality: number | null
    empowermentPotential: number | null
  }

  export type TapestryNodeSumAggregateOutputType = {
    xCoordinate: number | null
    yCoordinate: number | null
    zCoordinate: number | null
    nodeSize: number | null
    emotionalResonance: number | null
    consciousnessDepth: number | null
    growthSignificance: number | null
    connectionStrengths: number[]
    networkCentrality: number | null
    empowermentPotential: number | null
  }

  export type TapestryNodeMinAggregateOutputType = {
    id: string | null
    userId: string | null
    xCoordinate: number | null
    yCoordinate: number | null
    zCoordinate: number | null
    nodeSize: number | null
    nodeColor: string | null
    thoughtContent: string | null
    emotionalResonance: number | null
    consciousnessDepth: number | null
    growthSignificance: number | null
    networkCentrality: number | null
    patternCategory: string | null
    empowermentPotential: number | null
    bucketDropId: string | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type TapestryNodeMaxAggregateOutputType = {
    id: string | null
    userId: string | null
    xCoordinate: number | null
    yCoordinate: number | null
    zCoordinate: number | null
    nodeSize: number | null
    nodeColor: string | null
    thoughtContent: string | null
    emotionalResonance: number | null
    consciousnessDepth: number | null
    growthSignificance: number | null
    networkCentrality: number | null
    patternCategory: string | null
    empowermentPotential: number | null
    bucketDropId: string | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type TapestryNodeCountAggregateOutputType = {
    id: number
    userId: number
    xCoordinate: number
    yCoordinate: number
    zCoordinate: number
    nodeSize: number
    nodeColor: number
    thoughtContent: number
    emotionalResonance: number
    consciousnessDepth: number
    growthSignificance: number
    connectedNodes: number
    connectionStrengths: number
    networkCentrality: number
    aiInterpretation: number
    patternCategory: number
    empowermentPotential: number
    bucketDropId: number
    createdAt: number
    updatedAt: number
    _all: number
  }


  export type TapestryNodeAvgAggregateInputType = {
    xCoordinate?: true
    yCoordinate?: true
    zCoordinate?: true
    nodeSize?: true
    emotionalResonance?: true
    consciousnessDepth?: true
    growthSignificance?: true
    connectionStrengths?: true
    networkCentrality?: true
    empowermentPotential?: true
  }

  export type TapestryNodeSumAggregateInputType = {
    xCoordinate?: true
    yCoordinate?: true
    zCoordinate?: true
    nodeSize?: true
    emotionalResonance?: true
    consciousnessDepth?: true
    growthSignificance?: true
    connectionStrengths?: true
    networkCentrality?: true
    empowermentPotential?: true
  }

  export type TapestryNodeMinAggregateInputType = {
    id?: true
    userId?: true
    xCoordinate?: true
    yCoordinate?: true
    zCoordinate?: true
    nodeSize?: true
    nodeColor?: true
    thoughtContent?: true
    emotionalResonance?: true
    consciousnessDepth?: true
    growthSignificance?: true
    networkCentrality?: true
    patternCategory?: true
    empowermentPotential?: true
    bucketDropId?: true
    createdAt?: true
    updatedAt?: true
  }

  export type TapestryNodeMaxAggregateInputType = {
    id?: true
    userId?: true
    xCoordinate?: true
    yCoordinate?: true
    zCoordinate?: true
    nodeSize?: true
    nodeColor?: true
    thoughtContent?: true
    emotionalResonance?: true
    consciousnessDepth?: true
    growthSignificance?: true
    networkCentrality?: true
    patternCategory?: true
    empowermentPotential?: true
    bucketDropId?: true
    createdAt?: true
    updatedAt?: true
  }

  export type TapestryNodeCountAggregateInputType = {
    id?: true
    userId?: true
    xCoordinate?: true
    yCoordinate?: true
    zCoordinate?: true
    nodeSize?: true
    nodeColor?: true
    thoughtContent?: true
    emotionalResonance?: true
    consciousnessDepth?: true
    growthSignificance?: true
    connectedNodes?: true
    connectionStrengths?: true
    networkCentrality?: true
    aiInterpretation?: true
    patternCategory?: true
    empowermentPotential?: true
    bucketDropId?: true
    createdAt?: true
    updatedAt?: true
    _all?: true
  }

  export type TapestryNodeAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which TapestryNode to aggregate.
     */
    where?: TapestryNodeWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of TapestryNodes to fetch.
     */
    orderBy?: TapestryNodeOrderByWithRelationInput | TapestryNodeOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: TapestryNodeWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` TapestryNodes from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` TapestryNodes.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned TapestryNodes
    **/
    _count?: true | TapestryNodeCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: TapestryNodeAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: TapestryNodeSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: TapestryNodeMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: TapestryNodeMaxAggregateInputType
  }

  export type GetTapestryNodeAggregateType<T extends TapestryNodeAggregateArgs> = {
        [P in keyof T & keyof AggregateTapestryNode]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateTapestryNode[P]>
      : GetScalarType<T[P], AggregateTapestryNode[P]>
  }




  export type TapestryNodeGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: TapestryNodeWhereInput
    orderBy?: TapestryNodeOrderByWithAggregationInput | TapestryNodeOrderByWithAggregationInput[]
    by: TapestryNodeScalarFieldEnum[] | TapestryNodeScalarFieldEnum
    having?: TapestryNodeScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: TapestryNodeCountAggregateInputType | true
    _avg?: TapestryNodeAvgAggregateInputType
    _sum?: TapestryNodeSumAggregateInputType
    _min?: TapestryNodeMinAggregateInputType
    _max?: TapestryNodeMaxAggregateInputType
  }

  export type TapestryNodeGroupByOutputType = {
    id: string
    userId: string
    xCoordinate: number | null
    yCoordinate: number | null
    zCoordinate: number | null
    nodeSize: number
    nodeColor: string
    thoughtContent: string
    emotionalResonance: number
    consciousnessDepth: number
    growthSignificance: number
    connectedNodes: string[]
    connectionStrengths: number[]
    networkCentrality: number
    aiInterpretation: JsonValue
    patternCategory: string | null
    empowermentPotential: number
    bucketDropId: string | null
    createdAt: Date
    updatedAt: Date
    _count: TapestryNodeCountAggregateOutputType | null
    _avg: TapestryNodeAvgAggregateOutputType | null
    _sum: TapestryNodeSumAggregateOutputType | null
    _min: TapestryNodeMinAggregateOutputType | null
    _max: TapestryNodeMaxAggregateOutputType | null
  }

  type GetTapestryNodeGroupByPayload<T extends TapestryNodeGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<TapestryNodeGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof TapestryNodeGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], TapestryNodeGroupByOutputType[P]>
            : GetScalarType<T[P], TapestryNodeGroupByOutputType[P]>
        }
      >
    >


  export type TapestryNodeSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    xCoordinate?: boolean
    yCoordinate?: boolean
    zCoordinate?: boolean
    nodeSize?: boolean
    nodeColor?: boolean
    thoughtContent?: boolean
    emotionalResonance?: boolean
    consciousnessDepth?: boolean
    growthSignificance?: boolean
    connectedNodes?: boolean
    connectionStrengths?: boolean
    networkCentrality?: boolean
    aiInterpretation?: boolean
    patternCategory?: boolean
    empowermentPotential?: boolean
    bucketDropId?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | TapestryNode$bucketDropArgs<ExtArgs>
  }, ExtArgs["result"]["tapestryNode"]>

  export type TapestryNodeSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    xCoordinate?: boolean
    yCoordinate?: boolean
    zCoordinate?: boolean
    nodeSize?: boolean
    nodeColor?: boolean
    thoughtContent?: boolean
    emotionalResonance?: boolean
    consciousnessDepth?: boolean
    growthSignificance?: boolean
    connectedNodes?: boolean
    connectionStrengths?: boolean
    networkCentrality?: boolean
    aiInterpretation?: boolean
    patternCategory?: boolean
    empowermentPotential?: boolean
    bucketDropId?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | TapestryNode$bucketDropArgs<ExtArgs>
  }, ExtArgs["result"]["tapestryNode"]>

  export type TapestryNodeSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    xCoordinate?: boolean
    yCoordinate?: boolean
    zCoordinate?: boolean
    nodeSize?: boolean
    nodeColor?: boolean
    thoughtContent?: boolean
    emotionalResonance?: boolean
    consciousnessDepth?: boolean
    growthSignificance?: boolean
    connectedNodes?: boolean
    connectionStrengths?: boolean
    networkCentrality?: boolean
    aiInterpretation?: boolean
    patternCategory?: boolean
    empowermentPotential?: boolean
    bucketDropId?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | TapestryNode$bucketDropArgs<ExtArgs>
  }, ExtArgs["result"]["tapestryNode"]>

  export type TapestryNodeSelectScalar = {
    id?: boolean
    userId?: boolean
    xCoordinate?: boolean
    yCoordinate?: boolean
    zCoordinate?: boolean
    nodeSize?: boolean
    nodeColor?: boolean
    thoughtContent?: boolean
    emotionalResonance?: boolean
    consciousnessDepth?: boolean
    growthSignificance?: boolean
    connectedNodes?: boolean
    connectionStrengths?: boolean
    networkCentrality?: boolean
    aiInterpretation?: boolean
    patternCategory?: boolean
    empowermentPotential?: boolean
    bucketDropId?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }

  export type TapestryNodeOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "userId" | "xCoordinate" | "yCoordinate" | "zCoordinate" | "nodeSize" | "nodeColor" | "thoughtContent" | "emotionalResonance" | "consciousnessDepth" | "growthSignificance" | "connectedNodes" | "connectionStrengths" | "networkCentrality" | "aiInterpretation" | "patternCategory" | "empowermentPotential" | "bucketDropId" | "createdAt" | "updatedAt", ExtArgs["result"]["tapestryNode"]>
  export type TapestryNodeInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | TapestryNode$bucketDropArgs<ExtArgs>
  }
  export type TapestryNodeIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | TapestryNode$bucketDropArgs<ExtArgs>
  }
  export type TapestryNodeIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | TapestryNode$bucketDropArgs<ExtArgs>
  }

  export type $TapestryNodePayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "TapestryNode"
    objects: {
      user: Prisma.$UserPayload<ExtArgs>
      bucketDrop: Prisma.$BucketDropPayload<ExtArgs> | null
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      userId: string
      xCoordinate: number | null
      yCoordinate: number | null
      zCoordinate: number | null
      nodeSize: number
      nodeColor: string
      thoughtContent: string
      emotionalResonance: number
      consciousnessDepth: number
      growthSignificance: number
      connectedNodes: string[]
      connectionStrengths: number[]
      networkCentrality: number
      aiInterpretation: Prisma.JsonValue
      patternCategory: string | null
      empowermentPotential: number
      bucketDropId: string | null
      createdAt: Date
      updatedAt: Date
    }, ExtArgs["result"]["tapestryNode"]>
    composites: {}
  }

  type TapestryNodeGetPayload<S extends boolean | null | undefined | TapestryNodeDefaultArgs> = $Result.GetResult<Prisma.$TapestryNodePayload, S>

  type TapestryNodeCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<TapestryNodeFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: TapestryNodeCountAggregateInputType | true
    }

  export interface TapestryNodeDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['TapestryNode'], meta: { name: 'TapestryNode' } }
    /**
     * Find zero or one TapestryNode that matches the filter.
     * @param {TapestryNodeFindUniqueArgs} args - Arguments to find a TapestryNode
     * @example
     * // Get one TapestryNode
     * const tapestryNode = await prisma.tapestryNode.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends TapestryNodeFindUniqueArgs>(args: SelectSubset<T, TapestryNodeFindUniqueArgs<ExtArgs>>): Prisma__TapestryNodeClient<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one TapestryNode that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {TapestryNodeFindUniqueOrThrowArgs} args - Arguments to find a TapestryNode
     * @example
     * // Get one TapestryNode
     * const tapestryNode = await prisma.tapestryNode.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends TapestryNodeFindUniqueOrThrowArgs>(args: SelectSubset<T, TapestryNodeFindUniqueOrThrowArgs<ExtArgs>>): Prisma__TapestryNodeClient<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first TapestryNode that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TapestryNodeFindFirstArgs} args - Arguments to find a TapestryNode
     * @example
     * // Get one TapestryNode
     * const tapestryNode = await prisma.tapestryNode.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends TapestryNodeFindFirstArgs>(args?: SelectSubset<T, TapestryNodeFindFirstArgs<ExtArgs>>): Prisma__TapestryNodeClient<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first TapestryNode that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TapestryNodeFindFirstOrThrowArgs} args - Arguments to find a TapestryNode
     * @example
     * // Get one TapestryNode
     * const tapestryNode = await prisma.tapestryNode.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends TapestryNodeFindFirstOrThrowArgs>(args?: SelectSubset<T, TapestryNodeFindFirstOrThrowArgs<ExtArgs>>): Prisma__TapestryNodeClient<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more TapestryNodes that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TapestryNodeFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all TapestryNodes
     * const tapestryNodes = await prisma.tapestryNode.findMany()
     * 
     * // Get first 10 TapestryNodes
     * const tapestryNodes = await prisma.tapestryNode.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const tapestryNodeWithIdOnly = await prisma.tapestryNode.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends TapestryNodeFindManyArgs>(args?: SelectSubset<T, TapestryNodeFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a TapestryNode.
     * @param {TapestryNodeCreateArgs} args - Arguments to create a TapestryNode.
     * @example
     * // Create one TapestryNode
     * const TapestryNode = await prisma.tapestryNode.create({
     *   data: {
     *     // ... data to create a TapestryNode
     *   }
     * })
     * 
     */
    create<T extends TapestryNodeCreateArgs>(args: SelectSubset<T, TapestryNodeCreateArgs<ExtArgs>>): Prisma__TapestryNodeClient<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many TapestryNodes.
     * @param {TapestryNodeCreateManyArgs} args - Arguments to create many TapestryNodes.
     * @example
     * // Create many TapestryNodes
     * const tapestryNode = await prisma.tapestryNode.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends TapestryNodeCreateManyArgs>(args?: SelectSubset<T, TapestryNodeCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many TapestryNodes and returns the data saved in the database.
     * @param {TapestryNodeCreateManyAndReturnArgs} args - Arguments to create many TapestryNodes.
     * @example
     * // Create many TapestryNodes
     * const tapestryNode = await prisma.tapestryNode.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many TapestryNodes and only return the `id`
     * const tapestryNodeWithIdOnly = await prisma.tapestryNode.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends TapestryNodeCreateManyAndReturnArgs>(args?: SelectSubset<T, TapestryNodeCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a TapestryNode.
     * @param {TapestryNodeDeleteArgs} args - Arguments to delete one TapestryNode.
     * @example
     * // Delete one TapestryNode
     * const TapestryNode = await prisma.tapestryNode.delete({
     *   where: {
     *     // ... filter to delete one TapestryNode
     *   }
     * })
     * 
     */
    delete<T extends TapestryNodeDeleteArgs>(args: SelectSubset<T, TapestryNodeDeleteArgs<ExtArgs>>): Prisma__TapestryNodeClient<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one TapestryNode.
     * @param {TapestryNodeUpdateArgs} args - Arguments to update one TapestryNode.
     * @example
     * // Update one TapestryNode
     * const tapestryNode = await prisma.tapestryNode.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends TapestryNodeUpdateArgs>(args: SelectSubset<T, TapestryNodeUpdateArgs<ExtArgs>>): Prisma__TapestryNodeClient<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more TapestryNodes.
     * @param {TapestryNodeDeleteManyArgs} args - Arguments to filter TapestryNodes to delete.
     * @example
     * // Delete a few TapestryNodes
     * const { count } = await prisma.tapestryNode.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends TapestryNodeDeleteManyArgs>(args?: SelectSubset<T, TapestryNodeDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more TapestryNodes.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TapestryNodeUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many TapestryNodes
     * const tapestryNode = await prisma.tapestryNode.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends TapestryNodeUpdateManyArgs>(args: SelectSubset<T, TapestryNodeUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more TapestryNodes and returns the data updated in the database.
     * @param {TapestryNodeUpdateManyAndReturnArgs} args - Arguments to update many TapestryNodes.
     * @example
     * // Update many TapestryNodes
     * const tapestryNode = await prisma.tapestryNode.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more TapestryNodes and only return the `id`
     * const tapestryNodeWithIdOnly = await prisma.tapestryNode.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends TapestryNodeUpdateManyAndReturnArgs>(args: SelectSubset<T, TapestryNodeUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one TapestryNode.
     * @param {TapestryNodeUpsertArgs} args - Arguments to update or create a TapestryNode.
     * @example
     * // Update or create a TapestryNode
     * const tapestryNode = await prisma.tapestryNode.upsert({
     *   create: {
     *     // ... data to create a TapestryNode
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the TapestryNode we want to update
     *   }
     * })
     */
    upsert<T extends TapestryNodeUpsertArgs>(args: SelectSubset<T, TapestryNodeUpsertArgs<ExtArgs>>): Prisma__TapestryNodeClient<$Result.GetResult<Prisma.$TapestryNodePayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of TapestryNodes.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TapestryNodeCountArgs} args - Arguments to filter TapestryNodes to count.
     * @example
     * // Count the number of TapestryNodes
     * const count = await prisma.tapestryNode.count({
     *   where: {
     *     // ... the filter for the TapestryNodes we want to count
     *   }
     * })
    **/
    count<T extends TapestryNodeCountArgs>(
      args?: Subset<T, TapestryNodeCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], TapestryNodeCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a TapestryNode.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TapestryNodeAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends TapestryNodeAggregateArgs>(args: Subset<T, TapestryNodeAggregateArgs>): Prisma.PrismaPromise<GetTapestryNodeAggregateType<T>>

    /**
     * Group by TapestryNode.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TapestryNodeGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends TapestryNodeGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: TapestryNodeGroupByArgs['orderBy'] }
        : { orderBy?: TapestryNodeGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, TapestryNodeGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetTapestryNodeGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the TapestryNode model
   */
  readonly fields: TapestryNodeFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for TapestryNode.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__TapestryNodeClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    user<T extends UserDefaultArgs<ExtArgs> = {}>(args?: Subset<T, UserDefaultArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    bucketDrop<T extends TapestryNode$bucketDropArgs<ExtArgs> = {}>(args?: Subset<T, TapestryNode$bucketDropArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the TapestryNode model
   */
  interface TapestryNodeFieldRefs {
    readonly id: FieldRef<"TapestryNode", 'String'>
    readonly userId: FieldRef<"TapestryNode", 'String'>
    readonly xCoordinate: FieldRef<"TapestryNode", 'Float'>
    readonly yCoordinate: FieldRef<"TapestryNode", 'Float'>
    readonly zCoordinate: FieldRef<"TapestryNode", 'Float'>
    readonly nodeSize: FieldRef<"TapestryNode", 'Int'>
    readonly nodeColor: FieldRef<"TapestryNode", 'String'>
    readonly thoughtContent: FieldRef<"TapestryNode", 'String'>
    readonly emotionalResonance: FieldRef<"TapestryNode", 'Float'>
    readonly consciousnessDepth: FieldRef<"TapestryNode", 'Int'>
    readonly growthSignificance: FieldRef<"TapestryNode", 'Float'>
    readonly connectedNodes: FieldRef<"TapestryNode", 'String[]'>
    readonly connectionStrengths: FieldRef<"TapestryNode", 'Float[]'>
    readonly networkCentrality: FieldRef<"TapestryNode", 'Float'>
    readonly aiInterpretation: FieldRef<"TapestryNode", 'Json'>
    readonly patternCategory: FieldRef<"TapestryNode", 'String'>
    readonly empowermentPotential: FieldRef<"TapestryNode", 'Float'>
    readonly bucketDropId: FieldRef<"TapestryNode", 'String'>
    readonly createdAt: FieldRef<"TapestryNode", 'DateTime'>
    readonly updatedAt: FieldRef<"TapestryNode", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * TapestryNode findUnique
   */
  export type TapestryNodeFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * Filter, which TapestryNode to fetch.
     */
    where: TapestryNodeWhereUniqueInput
  }

  /**
   * TapestryNode findUniqueOrThrow
   */
  export type TapestryNodeFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * Filter, which TapestryNode to fetch.
     */
    where: TapestryNodeWhereUniqueInput
  }

  /**
   * TapestryNode findFirst
   */
  export type TapestryNodeFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * Filter, which TapestryNode to fetch.
     */
    where?: TapestryNodeWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of TapestryNodes to fetch.
     */
    orderBy?: TapestryNodeOrderByWithRelationInput | TapestryNodeOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for TapestryNodes.
     */
    cursor?: TapestryNodeWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` TapestryNodes from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` TapestryNodes.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of TapestryNodes.
     */
    distinct?: TapestryNodeScalarFieldEnum | TapestryNodeScalarFieldEnum[]
  }

  /**
   * TapestryNode findFirstOrThrow
   */
  export type TapestryNodeFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * Filter, which TapestryNode to fetch.
     */
    where?: TapestryNodeWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of TapestryNodes to fetch.
     */
    orderBy?: TapestryNodeOrderByWithRelationInput | TapestryNodeOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for TapestryNodes.
     */
    cursor?: TapestryNodeWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` TapestryNodes from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` TapestryNodes.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of TapestryNodes.
     */
    distinct?: TapestryNodeScalarFieldEnum | TapestryNodeScalarFieldEnum[]
  }

  /**
   * TapestryNode findMany
   */
  export type TapestryNodeFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * Filter, which TapestryNodes to fetch.
     */
    where?: TapestryNodeWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of TapestryNodes to fetch.
     */
    orderBy?: TapestryNodeOrderByWithRelationInput | TapestryNodeOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing TapestryNodes.
     */
    cursor?: TapestryNodeWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` TapestryNodes from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` TapestryNodes.
     */
    skip?: number
    distinct?: TapestryNodeScalarFieldEnum | TapestryNodeScalarFieldEnum[]
  }

  /**
   * TapestryNode create
   */
  export type TapestryNodeCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * The data needed to create a TapestryNode.
     */
    data: XOR<TapestryNodeCreateInput, TapestryNodeUncheckedCreateInput>
  }

  /**
   * TapestryNode createMany
   */
  export type TapestryNodeCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many TapestryNodes.
     */
    data: TapestryNodeCreateManyInput | TapestryNodeCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * TapestryNode createManyAndReturn
   */
  export type TapestryNodeCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * The data used to create many TapestryNodes.
     */
    data: TapestryNodeCreateManyInput | TapestryNodeCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * TapestryNode update
   */
  export type TapestryNodeUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * The data needed to update a TapestryNode.
     */
    data: XOR<TapestryNodeUpdateInput, TapestryNodeUncheckedUpdateInput>
    /**
     * Choose, which TapestryNode to update.
     */
    where: TapestryNodeWhereUniqueInput
  }

  /**
   * TapestryNode updateMany
   */
  export type TapestryNodeUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update TapestryNodes.
     */
    data: XOR<TapestryNodeUpdateManyMutationInput, TapestryNodeUncheckedUpdateManyInput>
    /**
     * Filter which TapestryNodes to update
     */
    where?: TapestryNodeWhereInput
    /**
     * Limit how many TapestryNodes to update.
     */
    limit?: number
  }

  /**
   * TapestryNode updateManyAndReturn
   */
  export type TapestryNodeUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * The data used to update TapestryNodes.
     */
    data: XOR<TapestryNodeUpdateManyMutationInput, TapestryNodeUncheckedUpdateManyInput>
    /**
     * Filter which TapestryNodes to update
     */
    where?: TapestryNodeWhereInput
    /**
     * Limit how many TapestryNodes to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * TapestryNode upsert
   */
  export type TapestryNodeUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * The filter to search for the TapestryNode to update in case it exists.
     */
    where: TapestryNodeWhereUniqueInput
    /**
     * In case the TapestryNode found by the `where` argument doesn't exist, create a new TapestryNode with this data.
     */
    create: XOR<TapestryNodeCreateInput, TapestryNodeUncheckedCreateInput>
    /**
     * In case the TapestryNode was found with the provided `where` argument, update it with this data.
     */
    update: XOR<TapestryNodeUpdateInput, TapestryNodeUncheckedUpdateInput>
  }

  /**
   * TapestryNode delete
   */
  export type TapestryNodeDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
    /**
     * Filter which TapestryNode to delete.
     */
    where: TapestryNodeWhereUniqueInput
  }

  /**
   * TapestryNode deleteMany
   */
  export type TapestryNodeDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which TapestryNodes to delete
     */
    where?: TapestryNodeWhereInput
    /**
     * Limit how many TapestryNodes to delete.
     */
    limit?: number
  }

  /**
   * TapestryNode.bucketDrop
   */
  export type TapestryNode$bucketDropArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    where?: BucketDropWhereInput
  }

  /**
   * TapestryNode without action
   */
  export type TapestryNodeDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TapestryNode
     */
    select?: TapestryNodeSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TapestryNode
     */
    omit?: TapestryNodeOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TapestryNodeInclude<ExtArgs> | null
  }


  /**
   * Model TribunalSession
   */

  export type AggregateTribunalSession = {
    _count: TribunalSessionCountAggregateOutputType | null
    _avg: TribunalSessionAvgAggregateOutputType | null
    _sum: TribunalSessionSumAggregateOutputType | null
    _min: TribunalSessionMinAggregateOutputType | null
    _max: TribunalSessionMaxAggregateOutputType | null
  }

  export type TribunalSessionAvgAggregateOutputType = {
    consensusScore: number | null
    empowermentConsensus: number | null
    revolutionaryPotential: number | null
    duration: number | null
  }

  export type TribunalSessionSumAggregateOutputType = {
    consensusScore: number | null
    empowermentConsensus: number | null
    revolutionaryPotential: number | null
    duration: number | null
  }

  export type TribunalSessionMinAggregateOutputType = {
    id: string | null
    userId: string | null
    queryText: string | null
    sessionType: string | null
    openaiResponse: string | null
    anthropicResponse: string | null
    perplexityResponse: string | null
    geminiResponse: string | null
    consensusScore: number | null
    empowermentConsensus: number | null
    keithWisdomTriggered: boolean | null
    foundationalTruthHit: boolean | null
    revolutionaryPotential: number | null
    completedAt: Date | null
    duration: number | null
    createdAt: Date | null
  }

  export type TribunalSessionMaxAggregateOutputType = {
    id: string | null
    userId: string | null
    queryText: string | null
    sessionType: string | null
    openaiResponse: string | null
    anthropicResponse: string | null
    perplexityResponse: string | null
    geminiResponse: string | null
    consensusScore: number | null
    empowermentConsensus: number | null
    keithWisdomTriggered: boolean | null
    foundationalTruthHit: boolean | null
    revolutionaryPotential: number | null
    completedAt: Date | null
    duration: number | null
    createdAt: Date | null
  }

  export type TribunalSessionCountAggregateOutputType = {
    id: number
    userId: number
    queryText: number
    sessionType: number
    openaiResponse: number
    anthropicResponse: number
    perplexityResponse: number
    geminiResponse: number
    consensusScore: number
    empowermentConsensus: number
    consciousnessInsights: number
    keithWisdomTriggered: number
    foundationalTruthHit: number
    revolutionaryPotential: number
    adhdAdaptations: number
    processingAccommodations: number
    cognitiveAccessibility: number
    completedAt: number
    duration: number
    personasUsed: number
    createdAt: number
    _all: number
  }


  export type TribunalSessionAvgAggregateInputType = {
    consensusScore?: true
    empowermentConsensus?: true
    revolutionaryPotential?: true
    duration?: true
  }

  export type TribunalSessionSumAggregateInputType = {
    consensusScore?: true
    empowermentConsensus?: true
    revolutionaryPotential?: true
    duration?: true
  }

  export type TribunalSessionMinAggregateInputType = {
    id?: true
    userId?: true
    queryText?: true
    sessionType?: true
    openaiResponse?: true
    anthropicResponse?: true
    perplexityResponse?: true
    geminiResponse?: true
    consensusScore?: true
    empowermentConsensus?: true
    keithWisdomTriggered?: true
    foundationalTruthHit?: true
    revolutionaryPotential?: true
    completedAt?: true
    duration?: true
    createdAt?: true
  }

  export type TribunalSessionMaxAggregateInputType = {
    id?: true
    userId?: true
    queryText?: true
    sessionType?: true
    openaiResponse?: true
    anthropicResponse?: true
    perplexityResponse?: true
    geminiResponse?: true
    consensusScore?: true
    empowermentConsensus?: true
    keithWisdomTriggered?: true
    foundationalTruthHit?: true
    revolutionaryPotential?: true
    completedAt?: true
    duration?: true
    createdAt?: true
  }

  export type TribunalSessionCountAggregateInputType = {
    id?: true
    userId?: true
    queryText?: true
    sessionType?: true
    openaiResponse?: true
    anthropicResponse?: true
    perplexityResponse?: true
    geminiResponse?: true
    consensusScore?: true
    empowermentConsensus?: true
    consciousnessInsights?: true
    keithWisdomTriggered?: true
    foundationalTruthHit?: true
    revolutionaryPotential?: true
    adhdAdaptations?: true
    processingAccommodations?: true
    cognitiveAccessibility?: true
    completedAt?: true
    duration?: true
    personasUsed?: true
    createdAt?: true
    _all?: true
  }

  export type TribunalSessionAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which TribunalSession to aggregate.
     */
    where?: TribunalSessionWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of TribunalSessions to fetch.
     */
    orderBy?: TribunalSessionOrderByWithRelationInput | TribunalSessionOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: TribunalSessionWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` TribunalSessions from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` TribunalSessions.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned TribunalSessions
    **/
    _count?: true | TribunalSessionCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: TribunalSessionAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: TribunalSessionSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: TribunalSessionMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: TribunalSessionMaxAggregateInputType
  }

  export type GetTribunalSessionAggregateType<T extends TribunalSessionAggregateArgs> = {
        [P in keyof T & keyof AggregateTribunalSession]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateTribunalSession[P]>
      : GetScalarType<T[P], AggregateTribunalSession[P]>
  }




  export type TribunalSessionGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: TribunalSessionWhereInput
    orderBy?: TribunalSessionOrderByWithAggregationInput | TribunalSessionOrderByWithAggregationInput[]
    by: TribunalSessionScalarFieldEnum[] | TribunalSessionScalarFieldEnum
    having?: TribunalSessionScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: TribunalSessionCountAggregateInputType | true
    _avg?: TribunalSessionAvgAggregateInputType
    _sum?: TribunalSessionSumAggregateInputType
    _min?: TribunalSessionMinAggregateInputType
    _max?: TribunalSessionMaxAggregateInputType
  }

  export type TribunalSessionGroupByOutputType = {
    id: string
    userId: string
    queryText: string
    sessionType: string
    openaiResponse: string | null
    anthropicResponse: string | null
    perplexityResponse: string | null
    geminiResponse: string | null
    consensusScore: number
    empowermentConsensus: number
    consciousnessInsights: JsonValue
    keithWisdomTriggered: boolean
    foundationalTruthHit: boolean
    revolutionaryPotential: number
    adhdAdaptations: JsonValue
    processingAccommodations: JsonValue
    cognitiveAccessibility: JsonValue
    completedAt: Date | null
    duration: number | null
    personasUsed: string[]
    createdAt: Date
    _count: TribunalSessionCountAggregateOutputType | null
    _avg: TribunalSessionAvgAggregateOutputType | null
    _sum: TribunalSessionSumAggregateOutputType | null
    _min: TribunalSessionMinAggregateOutputType | null
    _max: TribunalSessionMaxAggregateOutputType | null
  }

  type GetTribunalSessionGroupByPayload<T extends TribunalSessionGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<TribunalSessionGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof TribunalSessionGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], TribunalSessionGroupByOutputType[P]>
            : GetScalarType<T[P], TribunalSessionGroupByOutputType[P]>
        }
      >
    >


  export type TribunalSessionSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    queryText?: boolean
    sessionType?: boolean
    openaiResponse?: boolean
    anthropicResponse?: boolean
    perplexityResponse?: boolean
    geminiResponse?: boolean
    consensusScore?: boolean
    empowermentConsensus?: boolean
    consciousnessInsights?: boolean
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: boolean
    adhdAdaptations?: boolean
    processingAccommodations?: boolean
    cognitiveAccessibility?: boolean
    completedAt?: boolean
    duration?: boolean
    personasUsed?: boolean
    createdAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["tribunalSession"]>

  export type TribunalSessionSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    queryText?: boolean
    sessionType?: boolean
    openaiResponse?: boolean
    anthropicResponse?: boolean
    perplexityResponse?: boolean
    geminiResponse?: boolean
    consensusScore?: boolean
    empowermentConsensus?: boolean
    consciousnessInsights?: boolean
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: boolean
    adhdAdaptations?: boolean
    processingAccommodations?: boolean
    cognitiveAccessibility?: boolean
    completedAt?: boolean
    duration?: boolean
    personasUsed?: boolean
    createdAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["tribunalSession"]>

  export type TribunalSessionSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    queryText?: boolean
    sessionType?: boolean
    openaiResponse?: boolean
    anthropicResponse?: boolean
    perplexityResponse?: boolean
    geminiResponse?: boolean
    consensusScore?: boolean
    empowermentConsensus?: boolean
    consciousnessInsights?: boolean
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: boolean
    adhdAdaptations?: boolean
    processingAccommodations?: boolean
    cognitiveAccessibility?: boolean
    completedAt?: boolean
    duration?: boolean
    personasUsed?: boolean
    createdAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["tribunalSession"]>

  export type TribunalSessionSelectScalar = {
    id?: boolean
    userId?: boolean
    queryText?: boolean
    sessionType?: boolean
    openaiResponse?: boolean
    anthropicResponse?: boolean
    perplexityResponse?: boolean
    geminiResponse?: boolean
    consensusScore?: boolean
    empowermentConsensus?: boolean
    consciousnessInsights?: boolean
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: boolean
    adhdAdaptations?: boolean
    processingAccommodations?: boolean
    cognitiveAccessibility?: boolean
    completedAt?: boolean
    duration?: boolean
    personasUsed?: boolean
    createdAt?: boolean
  }

  export type TribunalSessionOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "userId" | "queryText" | "sessionType" | "openaiResponse" | "anthropicResponse" | "perplexityResponse" | "geminiResponse" | "consensusScore" | "empowermentConsensus" | "consciousnessInsights" | "keithWisdomTriggered" | "foundationalTruthHit" | "revolutionaryPotential" | "adhdAdaptations" | "processingAccommodations" | "cognitiveAccessibility" | "completedAt" | "duration" | "personasUsed" | "createdAt", ExtArgs["result"]["tribunalSession"]>
  export type TribunalSessionInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type TribunalSessionIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type TribunalSessionIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }

  export type $TribunalSessionPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "TribunalSession"
    objects: {
      user: Prisma.$UserPayload<ExtArgs>
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      userId: string
      queryText: string
      sessionType: string
      openaiResponse: string | null
      anthropicResponse: string | null
      perplexityResponse: string | null
      geminiResponse: string | null
      consensusScore: number
      empowermentConsensus: number
      consciousnessInsights: Prisma.JsonValue
      keithWisdomTriggered: boolean
      foundationalTruthHit: boolean
      revolutionaryPotential: number
      adhdAdaptations: Prisma.JsonValue
      processingAccommodations: Prisma.JsonValue
      cognitiveAccessibility: Prisma.JsonValue
      completedAt: Date | null
      duration: number | null
      personasUsed: string[]
      createdAt: Date
    }, ExtArgs["result"]["tribunalSession"]>
    composites: {}
  }

  type TribunalSessionGetPayload<S extends boolean | null | undefined | TribunalSessionDefaultArgs> = $Result.GetResult<Prisma.$TribunalSessionPayload, S>

  type TribunalSessionCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<TribunalSessionFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: TribunalSessionCountAggregateInputType | true
    }

  export interface TribunalSessionDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['TribunalSession'], meta: { name: 'TribunalSession' } }
    /**
     * Find zero or one TribunalSession that matches the filter.
     * @param {TribunalSessionFindUniqueArgs} args - Arguments to find a TribunalSession
     * @example
     * // Get one TribunalSession
     * const tribunalSession = await prisma.tribunalSession.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends TribunalSessionFindUniqueArgs>(args: SelectSubset<T, TribunalSessionFindUniqueArgs<ExtArgs>>): Prisma__TribunalSessionClient<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one TribunalSession that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {TribunalSessionFindUniqueOrThrowArgs} args - Arguments to find a TribunalSession
     * @example
     * // Get one TribunalSession
     * const tribunalSession = await prisma.tribunalSession.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends TribunalSessionFindUniqueOrThrowArgs>(args: SelectSubset<T, TribunalSessionFindUniqueOrThrowArgs<ExtArgs>>): Prisma__TribunalSessionClient<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first TribunalSession that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TribunalSessionFindFirstArgs} args - Arguments to find a TribunalSession
     * @example
     * // Get one TribunalSession
     * const tribunalSession = await prisma.tribunalSession.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends TribunalSessionFindFirstArgs>(args?: SelectSubset<T, TribunalSessionFindFirstArgs<ExtArgs>>): Prisma__TribunalSessionClient<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first TribunalSession that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TribunalSessionFindFirstOrThrowArgs} args - Arguments to find a TribunalSession
     * @example
     * // Get one TribunalSession
     * const tribunalSession = await prisma.tribunalSession.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends TribunalSessionFindFirstOrThrowArgs>(args?: SelectSubset<T, TribunalSessionFindFirstOrThrowArgs<ExtArgs>>): Prisma__TribunalSessionClient<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more TribunalSessions that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TribunalSessionFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all TribunalSessions
     * const tribunalSessions = await prisma.tribunalSession.findMany()
     * 
     * // Get first 10 TribunalSessions
     * const tribunalSessions = await prisma.tribunalSession.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const tribunalSessionWithIdOnly = await prisma.tribunalSession.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends TribunalSessionFindManyArgs>(args?: SelectSubset<T, TribunalSessionFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a TribunalSession.
     * @param {TribunalSessionCreateArgs} args - Arguments to create a TribunalSession.
     * @example
     * // Create one TribunalSession
     * const TribunalSession = await prisma.tribunalSession.create({
     *   data: {
     *     // ... data to create a TribunalSession
     *   }
     * })
     * 
     */
    create<T extends TribunalSessionCreateArgs>(args: SelectSubset<T, TribunalSessionCreateArgs<ExtArgs>>): Prisma__TribunalSessionClient<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many TribunalSessions.
     * @param {TribunalSessionCreateManyArgs} args - Arguments to create many TribunalSessions.
     * @example
     * // Create many TribunalSessions
     * const tribunalSession = await prisma.tribunalSession.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends TribunalSessionCreateManyArgs>(args?: SelectSubset<T, TribunalSessionCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many TribunalSessions and returns the data saved in the database.
     * @param {TribunalSessionCreateManyAndReturnArgs} args - Arguments to create many TribunalSessions.
     * @example
     * // Create many TribunalSessions
     * const tribunalSession = await prisma.tribunalSession.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many TribunalSessions and only return the `id`
     * const tribunalSessionWithIdOnly = await prisma.tribunalSession.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends TribunalSessionCreateManyAndReturnArgs>(args?: SelectSubset<T, TribunalSessionCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a TribunalSession.
     * @param {TribunalSessionDeleteArgs} args - Arguments to delete one TribunalSession.
     * @example
     * // Delete one TribunalSession
     * const TribunalSession = await prisma.tribunalSession.delete({
     *   where: {
     *     // ... filter to delete one TribunalSession
     *   }
     * })
     * 
     */
    delete<T extends TribunalSessionDeleteArgs>(args: SelectSubset<T, TribunalSessionDeleteArgs<ExtArgs>>): Prisma__TribunalSessionClient<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one TribunalSession.
     * @param {TribunalSessionUpdateArgs} args - Arguments to update one TribunalSession.
     * @example
     * // Update one TribunalSession
     * const tribunalSession = await prisma.tribunalSession.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends TribunalSessionUpdateArgs>(args: SelectSubset<T, TribunalSessionUpdateArgs<ExtArgs>>): Prisma__TribunalSessionClient<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more TribunalSessions.
     * @param {TribunalSessionDeleteManyArgs} args - Arguments to filter TribunalSessions to delete.
     * @example
     * // Delete a few TribunalSessions
     * const { count } = await prisma.tribunalSession.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends TribunalSessionDeleteManyArgs>(args?: SelectSubset<T, TribunalSessionDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more TribunalSessions.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TribunalSessionUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many TribunalSessions
     * const tribunalSession = await prisma.tribunalSession.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends TribunalSessionUpdateManyArgs>(args: SelectSubset<T, TribunalSessionUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more TribunalSessions and returns the data updated in the database.
     * @param {TribunalSessionUpdateManyAndReturnArgs} args - Arguments to update many TribunalSessions.
     * @example
     * // Update many TribunalSessions
     * const tribunalSession = await prisma.tribunalSession.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more TribunalSessions and only return the `id`
     * const tribunalSessionWithIdOnly = await prisma.tribunalSession.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends TribunalSessionUpdateManyAndReturnArgs>(args: SelectSubset<T, TribunalSessionUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one TribunalSession.
     * @param {TribunalSessionUpsertArgs} args - Arguments to update or create a TribunalSession.
     * @example
     * // Update or create a TribunalSession
     * const tribunalSession = await prisma.tribunalSession.upsert({
     *   create: {
     *     // ... data to create a TribunalSession
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the TribunalSession we want to update
     *   }
     * })
     */
    upsert<T extends TribunalSessionUpsertArgs>(args: SelectSubset<T, TribunalSessionUpsertArgs<ExtArgs>>): Prisma__TribunalSessionClient<$Result.GetResult<Prisma.$TribunalSessionPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of TribunalSessions.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TribunalSessionCountArgs} args - Arguments to filter TribunalSessions to count.
     * @example
     * // Count the number of TribunalSessions
     * const count = await prisma.tribunalSession.count({
     *   where: {
     *     // ... the filter for the TribunalSessions we want to count
     *   }
     * })
    **/
    count<T extends TribunalSessionCountArgs>(
      args?: Subset<T, TribunalSessionCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], TribunalSessionCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a TribunalSession.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TribunalSessionAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends TribunalSessionAggregateArgs>(args: Subset<T, TribunalSessionAggregateArgs>): Prisma.PrismaPromise<GetTribunalSessionAggregateType<T>>

    /**
     * Group by TribunalSession.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {TribunalSessionGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends TribunalSessionGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: TribunalSessionGroupByArgs['orderBy'] }
        : { orderBy?: TribunalSessionGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, TribunalSessionGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetTribunalSessionGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the TribunalSession model
   */
  readonly fields: TribunalSessionFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for TribunalSession.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__TribunalSessionClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    user<T extends UserDefaultArgs<ExtArgs> = {}>(args?: Subset<T, UserDefaultArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the TribunalSession model
   */
  interface TribunalSessionFieldRefs {
    readonly id: FieldRef<"TribunalSession", 'String'>
    readonly userId: FieldRef<"TribunalSession", 'String'>
    readonly queryText: FieldRef<"TribunalSession", 'String'>
    readonly sessionType: FieldRef<"TribunalSession", 'String'>
    readonly openaiResponse: FieldRef<"TribunalSession", 'String'>
    readonly anthropicResponse: FieldRef<"TribunalSession", 'String'>
    readonly perplexityResponse: FieldRef<"TribunalSession", 'String'>
    readonly geminiResponse: FieldRef<"TribunalSession", 'String'>
    readonly consensusScore: FieldRef<"TribunalSession", 'Float'>
    readonly empowermentConsensus: FieldRef<"TribunalSession", 'Float'>
    readonly consciousnessInsights: FieldRef<"TribunalSession", 'Json'>
    readonly keithWisdomTriggered: FieldRef<"TribunalSession", 'Boolean'>
    readonly foundationalTruthHit: FieldRef<"TribunalSession", 'Boolean'>
    readonly revolutionaryPotential: FieldRef<"TribunalSession", 'Float'>
    readonly adhdAdaptations: FieldRef<"TribunalSession", 'Json'>
    readonly processingAccommodations: FieldRef<"TribunalSession", 'Json'>
    readonly cognitiveAccessibility: FieldRef<"TribunalSession", 'Json'>
    readonly completedAt: FieldRef<"TribunalSession", 'DateTime'>
    readonly duration: FieldRef<"TribunalSession", 'Int'>
    readonly personasUsed: FieldRef<"TribunalSession", 'String[]'>
    readonly createdAt: FieldRef<"TribunalSession", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * TribunalSession findUnique
   */
  export type TribunalSessionFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * Filter, which TribunalSession to fetch.
     */
    where: TribunalSessionWhereUniqueInput
  }

  /**
   * TribunalSession findUniqueOrThrow
   */
  export type TribunalSessionFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * Filter, which TribunalSession to fetch.
     */
    where: TribunalSessionWhereUniqueInput
  }

  /**
   * TribunalSession findFirst
   */
  export type TribunalSessionFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * Filter, which TribunalSession to fetch.
     */
    where?: TribunalSessionWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of TribunalSessions to fetch.
     */
    orderBy?: TribunalSessionOrderByWithRelationInput | TribunalSessionOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for TribunalSessions.
     */
    cursor?: TribunalSessionWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` TribunalSessions from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` TribunalSessions.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of TribunalSessions.
     */
    distinct?: TribunalSessionScalarFieldEnum | TribunalSessionScalarFieldEnum[]
  }

  /**
   * TribunalSession findFirstOrThrow
   */
  export type TribunalSessionFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * Filter, which TribunalSession to fetch.
     */
    where?: TribunalSessionWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of TribunalSessions to fetch.
     */
    orderBy?: TribunalSessionOrderByWithRelationInput | TribunalSessionOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for TribunalSessions.
     */
    cursor?: TribunalSessionWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` TribunalSessions from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` TribunalSessions.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of TribunalSessions.
     */
    distinct?: TribunalSessionScalarFieldEnum | TribunalSessionScalarFieldEnum[]
  }

  /**
   * TribunalSession findMany
   */
  export type TribunalSessionFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * Filter, which TribunalSessions to fetch.
     */
    where?: TribunalSessionWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of TribunalSessions to fetch.
     */
    orderBy?: TribunalSessionOrderByWithRelationInput | TribunalSessionOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing TribunalSessions.
     */
    cursor?: TribunalSessionWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` TribunalSessions from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` TribunalSessions.
     */
    skip?: number
    distinct?: TribunalSessionScalarFieldEnum | TribunalSessionScalarFieldEnum[]
  }

  /**
   * TribunalSession create
   */
  export type TribunalSessionCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * The data needed to create a TribunalSession.
     */
    data: XOR<TribunalSessionCreateInput, TribunalSessionUncheckedCreateInput>
  }

  /**
   * TribunalSession createMany
   */
  export type TribunalSessionCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many TribunalSessions.
     */
    data: TribunalSessionCreateManyInput | TribunalSessionCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * TribunalSession createManyAndReturn
   */
  export type TribunalSessionCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * The data used to create many TribunalSessions.
     */
    data: TribunalSessionCreateManyInput | TribunalSessionCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * TribunalSession update
   */
  export type TribunalSessionUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * The data needed to update a TribunalSession.
     */
    data: XOR<TribunalSessionUpdateInput, TribunalSessionUncheckedUpdateInput>
    /**
     * Choose, which TribunalSession to update.
     */
    where: TribunalSessionWhereUniqueInput
  }

  /**
   * TribunalSession updateMany
   */
  export type TribunalSessionUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update TribunalSessions.
     */
    data: XOR<TribunalSessionUpdateManyMutationInput, TribunalSessionUncheckedUpdateManyInput>
    /**
     * Filter which TribunalSessions to update
     */
    where?: TribunalSessionWhereInput
    /**
     * Limit how many TribunalSessions to update.
     */
    limit?: number
  }

  /**
   * TribunalSession updateManyAndReturn
   */
  export type TribunalSessionUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * The data used to update TribunalSessions.
     */
    data: XOR<TribunalSessionUpdateManyMutationInput, TribunalSessionUncheckedUpdateManyInput>
    /**
     * Filter which TribunalSessions to update
     */
    where?: TribunalSessionWhereInput
    /**
     * Limit how many TribunalSessions to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * TribunalSession upsert
   */
  export type TribunalSessionUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * The filter to search for the TribunalSession to update in case it exists.
     */
    where: TribunalSessionWhereUniqueInput
    /**
     * In case the TribunalSession found by the `where` argument doesn't exist, create a new TribunalSession with this data.
     */
    create: XOR<TribunalSessionCreateInput, TribunalSessionUncheckedCreateInput>
    /**
     * In case the TribunalSession was found with the provided `where` argument, update it with this data.
     */
    update: XOR<TribunalSessionUpdateInput, TribunalSessionUncheckedUpdateInput>
  }

  /**
   * TribunalSession delete
   */
  export type TribunalSessionDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
    /**
     * Filter which TribunalSession to delete.
     */
    where: TribunalSessionWhereUniqueInput
  }

  /**
   * TribunalSession deleteMany
   */
  export type TribunalSessionDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which TribunalSessions to delete
     */
    where?: TribunalSessionWhereInput
    /**
     * Limit how many TribunalSessions to delete.
     */
    limit?: number
  }

  /**
   * TribunalSession without action
   */
  export type TribunalSessionDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the TribunalSession
     */
    select?: TribunalSessionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the TribunalSession
     */
    omit?: TribunalSessionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: TribunalSessionInclude<ExtArgs> | null
  }


  /**
   * Model MusicalDnaAnalysis
   */

  export type AggregateMusicalDnaAnalysis = {
    _count: MusicalDnaAnalysisCountAggregateOutputType | null
    _avg: MusicalDnaAnalysisAvgAggregateOutputType | null
    _sum: MusicalDnaAnalysisSumAggregateOutputType | null
    _min: MusicalDnaAnalysisMinAggregateOutputType | null
    _max: MusicalDnaAnalysisMaxAggregateOutputType | null
  }

  export type MusicalDnaAnalysisAvgAggregateOutputType = {
    acousticPreference: number | null
    introspectionLevel: number | null
    resilienceMarkers: number | null
    connectionLonging: number | null
    catharticProcessing: number | null
    songsAnalyzed: number | null
    confidenceLevel: number | null
  }

  export type MusicalDnaAnalysisSumAggregateOutputType = {
    acousticPreference: number | null
    introspectionLevel: number | null
    resilienceMarkers: number | null
    connectionLonging: number | null
    catharticProcessing: number | null
    songsAnalyzed: number | null
    confidenceLevel: number | null
  }

  export type MusicalDnaAnalysisMinAggregateOutputType = {
    id: string | null
    userId: string | null
    acousticPreference: number | null
    introspectionLevel: number | null
    resilienceMarkers: number | null
    connectionLonging: number | null
    catharticProcessing: number | null
    narrativeArc: string | null
    transformationStage: string | null
    resonancePattern: string | null
    songsAnalyzed: number | null
    confidenceLevel: number | null
    lastSpotifySync: Date | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type MusicalDnaAnalysisMaxAggregateOutputType = {
    id: string | null
    userId: string | null
    acousticPreference: number | null
    introspectionLevel: number | null
    resilienceMarkers: number | null
    connectionLonging: number | null
    catharticProcessing: number | null
    narrativeArc: string | null
    transformationStage: string | null
    resonancePattern: string | null
    songsAnalyzed: number | null
    confidenceLevel: number | null
    lastSpotifySync: Date | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type MusicalDnaAnalysisCountAggregateOutputType = {
    id: number
    userId: number
    primaryGenres: number
    primaryArtists: number
    emotionalThemes: number
    acousticPreference: number
    introspectionLevel: number
    resilienceMarkers: number
    connectionLonging: number
    catharticProcessing: number
    narrativeArc: number
    transformationStage: number
    musicalMetaphors: number
    resonancePattern: number
    cognitiveMapping: number
    songsAnalyzed: number
    confidenceLevel: number
    lastSpotifySync: number
    createdAt: number
    updatedAt: number
    _all: number
  }


  export type MusicalDnaAnalysisAvgAggregateInputType = {
    acousticPreference?: true
    introspectionLevel?: true
    resilienceMarkers?: true
    connectionLonging?: true
    catharticProcessing?: true
    songsAnalyzed?: true
    confidenceLevel?: true
  }

  export type MusicalDnaAnalysisSumAggregateInputType = {
    acousticPreference?: true
    introspectionLevel?: true
    resilienceMarkers?: true
    connectionLonging?: true
    catharticProcessing?: true
    songsAnalyzed?: true
    confidenceLevel?: true
  }

  export type MusicalDnaAnalysisMinAggregateInputType = {
    id?: true
    userId?: true
    acousticPreference?: true
    introspectionLevel?: true
    resilienceMarkers?: true
    connectionLonging?: true
    catharticProcessing?: true
    narrativeArc?: true
    transformationStage?: true
    resonancePattern?: true
    songsAnalyzed?: true
    confidenceLevel?: true
    lastSpotifySync?: true
    createdAt?: true
    updatedAt?: true
  }

  export type MusicalDnaAnalysisMaxAggregateInputType = {
    id?: true
    userId?: true
    acousticPreference?: true
    introspectionLevel?: true
    resilienceMarkers?: true
    connectionLonging?: true
    catharticProcessing?: true
    narrativeArc?: true
    transformationStage?: true
    resonancePattern?: true
    songsAnalyzed?: true
    confidenceLevel?: true
    lastSpotifySync?: true
    createdAt?: true
    updatedAt?: true
  }

  export type MusicalDnaAnalysisCountAggregateInputType = {
    id?: true
    userId?: true
    primaryGenres?: true
    primaryArtists?: true
    emotionalThemes?: true
    acousticPreference?: true
    introspectionLevel?: true
    resilienceMarkers?: true
    connectionLonging?: true
    catharticProcessing?: true
    narrativeArc?: true
    transformationStage?: true
    musicalMetaphors?: true
    resonancePattern?: true
    cognitiveMapping?: true
    songsAnalyzed?: true
    confidenceLevel?: true
    lastSpotifySync?: true
    createdAt?: true
    updatedAt?: true
    _all?: true
  }

  export type MusicalDnaAnalysisAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which MusicalDnaAnalysis to aggregate.
     */
    where?: MusicalDnaAnalysisWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of MusicalDnaAnalyses to fetch.
     */
    orderBy?: MusicalDnaAnalysisOrderByWithRelationInput | MusicalDnaAnalysisOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: MusicalDnaAnalysisWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` MusicalDnaAnalyses from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` MusicalDnaAnalyses.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned MusicalDnaAnalyses
    **/
    _count?: true | MusicalDnaAnalysisCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: MusicalDnaAnalysisAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: MusicalDnaAnalysisSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: MusicalDnaAnalysisMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: MusicalDnaAnalysisMaxAggregateInputType
  }

  export type GetMusicalDnaAnalysisAggregateType<T extends MusicalDnaAnalysisAggregateArgs> = {
        [P in keyof T & keyof AggregateMusicalDnaAnalysis]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateMusicalDnaAnalysis[P]>
      : GetScalarType<T[P], AggregateMusicalDnaAnalysis[P]>
  }




  export type MusicalDnaAnalysisGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: MusicalDnaAnalysisWhereInput
    orderBy?: MusicalDnaAnalysisOrderByWithAggregationInput | MusicalDnaAnalysisOrderByWithAggregationInput[]
    by: MusicalDnaAnalysisScalarFieldEnum[] | MusicalDnaAnalysisScalarFieldEnum
    having?: MusicalDnaAnalysisScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: MusicalDnaAnalysisCountAggregateInputType | true
    _avg?: MusicalDnaAnalysisAvgAggregateInputType
    _sum?: MusicalDnaAnalysisSumAggregateInputType
    _min?: MusicalDnaAnalysisMinAggregateInputType
    _max?: MusicalDnaAnalysisMaxAggregateInputType
  }

  export type MusicalDnaAnalysisGroupByOutputType = {
    id: string
    userId: string
    primaryGenres: string[]
    primaryArtists: string[]
    emotionalThemes: JsonValue
    acousticPreference: number
    introspectionLevel: number
    resilienceMarkers: number
    connectionLonging: number
    catharticProcessing: number
    narrativeArc: string | null
    transformationStage: string | null
    musicalMetaphors: JsonValue
    resonancePattern: string | null
    cognitiveMapping: JsonValue
    songsAnalyzed: number
    confidenceLevel: number
    lastSpotifySync: Date | null
    createdAt: Date
    updatedAt: Date
    _count: MusicalDnaAnalysisCountAggregateOutputType | null
    _avg: MusicalDnaAnalysisAvgAggregateOutputType | null
    _sum: MusicalDnaAnalysisSumAggregateOutputType | null
    _min: MusicalDnaAnalysisMinAggregateOutputType | null
    _max: MusicalDnaAnalysisMaxAggregateOutputType | null
  }

  type GetMusicalDnaAnalysisGroupByPayload<T extends MusicalDnaAnalysisGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<MusicalDnaAnalysisGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof MusicalDnaAnalysisGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], MusicalDnaAnalysisGroupByOutputType[P]>
            : GetScalarType<T[P], MusicalDnaAnalysisGroupByOutputType[P]>
        }
      >
    >


  export type MusicalDnaAnalysisSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    primaryGenres?: boolean
    primaryArtists?: boolean
    emotionalThemes?: boolean
    acousticPreference?: boolean
    introspectionLevel?: boolean
    resilienceMarkers?: boolean
    connectionLonging?: boolean
    catharticProcessing?: boolean
    narrativeArc?: boolean
    transformationStage?: boolean
    musicalMetaphors?: boolean
    resonancePattern?: boolean
    cognitiveMapping?: boolean
    songsAnalyzed?: boolean
    confidenceLevel?: boolean
    lastSpotifySync?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["musicalDnaAnalysis"]>

  export type MusicalDnaAnalysisSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    primaryGenres?: boolean
    primaryArtists?: boolean
    emotionalThemes?: boolean
    acousticPreference?: boolean
    introspectionLevel?: boolean
    resilienceMarkers?: boolean
    connectionLonging?: boolean
    catharticProcessing?: boolean
    narrativeArc?: boolean
    transformationStage?: boolean
    musicalMetaphors?: boolean
    resonancePattern?: boolean
    cognitiveMapping?: boolean
    songsAnalyzed?: boolean
    confidenceLevel?: boolean
    lastSpotifySync?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["musicalDnaAnalysis"]>

  export type MusicalDnaAnalysisSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    primaryGenres?: boolean
    primaryArtists?: boolean
    emotionalThemes?: boolean
    acousticPreference?: boolean
    introspectionLevel?: boolean
    resilienceMarkers?: boolean
    connectionLonging?: boolean
    catharticProcessing?: boolean
    narrativeArc?: boolean
    transformationStage?: boolean
    musicalMetaphors?: boolean
    resonancePattern?: boolean
    cognitiveMapping?: boolean
    songsAnalyzed?: boolean
    confidenceLevel?: boolean
    lastSpotifySync?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["musicalDnaAnalysis"]>

  export type MusicalDnaAnalysisSelectScalar = {
    id?: boolean
    userId?: boolean
    primaryGenres?: boolean
    primaryArtists?: boolean
    emotionalThemes?: boolean
    acousticPreference?: boolean
    introspectionLevel?: boolean
    resilienceMarkers?: boolean
    connectionLonging?: boolean
    catharticProcessing?: boolean
    narrativeArc?: boolean
    transformationStage?: boolean
    musicalMetaphors?: boolean
    resonancePattern?: boolean
    cognitiveMapping?: boolean
    songsAnalyzed?: boolean
    confidenceLevel?: boolean
    lastSpotifySync?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }

  export type MusicalDnaAnalysisOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "userId" | "primaryGenres" | "primaryArtists" | "emotionalThemes" | "acousticPreference" | "introspectionLevel" | "resilienceMarkers" | "connectionLonging" | "catharticProcessing" | "narrativeArc" | "transformationStage" | "musicalMetaphors" | "resonancePattern" | "cognitiveMapping" | "songsAnalyzed" | "confidenceLevel" | "lastSpotifySync" | "createdAt" | "updatedAt", ExtArgs["result"]["musicalDnaAnalysis"]>
  export type MusicalDnaAnalysisInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type MusicalDnaAnalysisIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type MusicalDnaAnalysisIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }

  export type $MusicalDnaAnalysisPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "MusicalDnaAnalysis"
    objects: {
      user: Prisma.$UserPayload<ExtArgs>
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      userId: string
      primaryGenres: string[]
      primaryArtists: string[]
      emotionalThemes: Prisma.JsonValue
      acousticPreference: number
      introspectionLevel: number
      resilienceMarkers: number
      connectionLonging: number
      catharticProcessing: number
      narrativeArc: string | null
      transformationStage: string | null
      musicalMetaphors: Prisma.JsonValue
      resonancePattern: string | null
      cognitiveMapping: Prisma.JsonValue
      songsAnalyzed: number
      confidenceLevel: number
      lastSpotifySync: Date | null
      createdAt: Date
      updatedAt: Date
    }, ExtArgs["result"]["musicalDnaAnalysis"]>
    composites: {}
  }

  type MusicalDnaAnalysisGetPayload<S extends boolean | null | undefined | MusicalDnaAnalysisDefaultArgs> = $Result.GetResult<Prisma.$MusicalDnaAnalysisPayload, S>

  type MusicalDnaAnalysisCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<MusicalDnaAnalysisFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: MusicalDnaAnalysisCountAggregateInputType | true
    }

  export interface MusicalDnaAnalysisDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['MusicalDnaAnalysis'], meta: { name: 'MusicalDnaAnalysis' } }
    /**
     * Find zero or one MusicalDnaAnalysis that matches the filter.
     * @param {MusicalDnaAnalysisFindUniqueArgs} args - Arguments to find a MusicalDnaAnalysis
     * @example
     * // Get one MusicalDnaAnalysis
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends MusicalDnaAnalysisFindUniqueArgs>(args: SelectSubset<T, MusicalDnaAnalysisFindUniqueArgs<ExtArgs>>): Prisma__MusicalDnaAnalysisClient<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one MusicalDnaAnalysis that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {MusicalDnaAnalysisFindUniqueOrThrowArgs} args - Arguments to find a MusicalDnaAnalysis
     * @example
     * // Get one MusicalDnaAnalysis
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends MusicalDnaAnalysisFindUniqueOrThrowArgs>(args: SelectSubset<T, MusicalDnaAnalysisFindUniqueOrThrowArgs<ExtArgs>>): Prisma__MusicalDnaAnalysisClient<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first MusicalDnaAnalysis that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {MusicalDnaAnalysisFindFirstArgs} args - Arguments to find a MusicalDnaAnalysis
     * @example
     * // Get one MusicalDnaAnalysis
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends MusicalDnaAnalysisFindFirstArgs>(args?: SelectSubset<T, MusicalDnaAnalysisFindFirstArgs<ExtArgs>>): Prisma__MusicalDnaAnalysisClient<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first MusicalDnaAnalysis that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {MusicalDnaAnalysisFindFirstOrThrowArgs} args - Arguments to find a MusicalDnaAnalysis
     * @example
     * // Get one MusicalDnaAnalysis
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends MusicalDnaAnalysisFindFirstOrThrowArgs>(args?: SelectSubset<T, MusicalDnaAnalysisFindFirstOrThrowArgs<ExtArgs>>): Prisma__MusicalDnaAnalysisClient<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more MusicalDnaAnalyses that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {MusicalDnaAnalysisFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all MusicalDnaAnalyses
     * const musicalDnaAnalyses = await prisma.musicalDnaAnalysis.findMany()
     * 
     * // Get first 10 MusicalDnaAnalyses
     * const musicalDnaAnalyses = await prisma.musicalDnaAnalysis.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const musicalDnaAnalysisWithIdOnly = await prisma.musicalDnaAnalysis.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends MusicalDnaAnalysisFindManyArgs>(args?: SelectSubset<T, MusicalDnaAnalysisFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a MusicalDnaAnalysis.
     * @param {MusicalDnaAnalysisCreateArgs} args - Arguments to create a MusicalDnaAnalysis.
     * @example
     * // Create one MusicalDnaAnalysis
     * const MusicalDnaAnalysis = await prisma.musicalDnaAnalysis.create({
     *   data: {
     *     // ... data to create a MusicalDnaAnalysis
     *   }
     * })
     * 
     */
    create<T extends MusicalDnaAnalysisCreateArgs>(args: SelectSubset<T, MusicalDnaAnalysisCreateArgs<ExtArgs>>): Prisma__MusicalDnaAnalysisClient<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many MusicalDnaAnalyses.
     * @param {MusicalDnaAnalysisCreateManyArgs} args - Arguments to create many MusicalDnaAnalyses.
     * @example
     * // Create many MusicalDnaAnalyses
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends MusicalDnaAnalysisCreateManyArgs>(args?: SelectSubset<T, MusicalDnaAnalysisCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many MusicalDnaAnalyses and returns the data saved in the database.
     * @param {MusicalDnaAnalysisCreateManyAndReturnArgs} args - Arguments to create many MusicalDnaAnalyses.
     * @example
     * // Create many MusicalDnaAnalyses
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many MusicalDnaAnalyses and only return the `id`
     * const musicalDnaAnalysisWithIdOnly = await prisma.musicalDnaAnalysis.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends MusicalDnaAnalysisCreateManyAndReturnArgs>(args?: SelectSubset<T, MusicalDnaAnalysisCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a MusicalDnaAnalysis.
     * @param {MusicalDnaAnalysisDeleteArgs} args - Arguments to delete one MusicalDnaAnalysis.
     * @example
     * // Delete one MusicalDnaAnalysis
     * const MusicalDnaAnalysis = await prisma.musicalDnaAnalysis.delete({
     *   where: {
     *     // ... filter to delete one MusicalDnaAnalysis
     *   }
     * })
     * 
     */
    delete<T extends MusicalDnaAnalysisDeleteArgs>(args: SelectSubset<T, MusicalDnaAnalysisDeleteArgs<ExtArgs>>): Prisma__MusicalDnaAnalysisClient<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one MusicalDnaAnalysis.
     * @param {MusicalDnaAnalysisUpdateArgs} args - Arguments to update one MusicalDnaAnalysis.
     * @example
     * // Update one MusicalDnaAnalysis
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends MusicalDnaAnalysisUpdateArgs>(args: SelectSubset<T, MusicalDnaAnalysisUpdateArgs<ExtArgs>>): Prisma__MusicalDnaAnalysisClient<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more MusicalDnaAnalyses.
     * @param {MusicalDnaAnalysisDeleteManyArgs} args - Arguments to filter MusicalDnaAnalyses to delete.
     * @example
     * // Delete a few MusicalDnaAnalyses
     * const { count } = await prisma.musicalDnaAnalysis.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends MusicalDnaAnalysisDeleteManyArgs>(args?: SelectSubset<T, MusicalDnaAnalysisDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more MusicalDnaAnalyses.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {MusicalDnaAnalysisUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many MusicalDnaAnalyses
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends MusicalDnaAnalysisUpdateManyArgs>(args: SelectSubset<T, MusicalDnaAnalysisUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more MusicalDnaAnalyses and returns the data updated in the database.
     * @param {MusicalDnaAnalysisUpdateManyAndReturnArgs} args - Arguments to update many MusicalDnaAnalyses.
     * @example
     * // Update many MusicalDnaAnalyses
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more MusicalDnaAnalyses and only return the `id`
     * const musicalDnaAnalysisWithIdOnly = await prisma.musicalDnaAnalysis.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends MusicalDnaAnalysisUpdateManyAndReturnArgs>(args: SelectSubset<T, MusicalDnaAnalysisUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one MusicalDnaAnalysis.
     * @param {MusicalDnaAnalysisUpsertArgs} args - Arguments to update or create a MusicalDnaAnalysis.
     * @example
     * // Update or create a MusicalDnaAnalysis
     * const musicalDnaAnalysis = await prisma.musicalDnaAnalysis.upsert({
     *   create: {
     *     // ... data to create a MusicalDnaAnalysis
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the MusicalDnaAnalysis we want to update
     *   }
     * })
     */
    upsert<T extends MusicalDnaAnalysisUpsertArgs>(args: SelectSubset<T, MusicalDnaAnalysisUpsertArgs<ExtArgs>>): Prisma__MusicalDnaAnalysisClient<$Result.GetResult<Prisma.$MusicalDnaAnalysisPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of MusicalDnaAnalyses.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {MusicalDnaAnalysisCountArgs} args - Arguments to filter MusicalDnaAnalyses to count.
     * @example
     * // Count the number of MusicalDnaAnalyses
     * const count = await prisma.musicalDnaAnalysis.count({
     *   where: {
     *     // ... the filter for the MusicalDnaAnalyses we want to count
     *   }
     * })
    **/
    count<T extends MusicalDnaAnalysisCountArgs>(
      args?: Subset<T, MusicalDnaAnalysisCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], MusicalDnaAnalysisCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a MusicalDnaAnalysis.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {MusicalDnaAnalysisAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends MusicalDnaAnalysisAggregateArgs>(args: Subset<T, MusicalDnaAnalysisAggregateArgs>): Prisma.PrismaPromise<GetMusicalDnaAnalysisAggregateType<T>>

    /**
     * Group by MusicalDnaAnalysis.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {MusicalDnaAnalysisGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends MusicalDnaAnalysisGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: MusicalDnaAnalysisGroupByArgs['orderBy'] }
        : { orderBy?: MusicalDnaAnalysisGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, MusicalDnaAnalysisGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetMusicalDnaAnalysisGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the MusicalDnaAnalysis model
   */
  readonly fields: MusicalDnaAnalysisFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for MusicalDnaAnalysis.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__MusicalDnaAnalysisClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    user<T extends UserDefaultArgs<ExtArgs> = {}>(args?: Subset<T, UserDefaultArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the MusicalDnaAnalysis model
   */
  interface MusicalDnaAnalysisFieldRefs {
    readonly id: FieldRef<"MusicalDnaAnalysis", 'String'>
    readonly userId: FieldRef<"MusicalDnaAnalysis", 'String'>
    readonly primaryGenres: FieldRef<"MusicalDnaAnalysis", 'String[]'>
    readonly primaryArtists: FieldRef<"MusicalDnaAnalysis", 'String[]'>
    readonly emotionalThemes: FieldRef<"MusicalDnaAnalysis", 'Json'>
    readonly acousticPreference: FieldRef<"MusicalDnaAnalysis", 'Float'>
    readonly introspectionLevel: FieldRef<"MusicalDnaAnalysis", 'Float'>
    readonly resilienceMarkers: FieldRef<"MusicalDnaAnalysis", 'Float'>
    readonly connectionLonging: FieldRef<"MusicalDnaAnalysis", 'Float'>
    readonly catharticProcessing: FieldRef<"MusicalDnaAnalysis", 'Float'>
    readonly narrativeArc: FieldRef<"MusicalDnaAnalysis", 'String'>
    readonly transformationStage: FieldRef<"MusicalDnaAnalysis", 'String'>
    readonly musicalMetaphors: FieldRef<"MusicalDnaAnalysis", 'Json'>
    readonly resonancePattern: FieldRef<"MusicalDnaAnalysis", 'String'>
    readonly cognitiveMapping: FieldRef<"MusicalDnaAnalysis", 'Json'>
    readonly songsAnalyzed: FieldRef<"MusicalDnaAnalysis", 'Int'>
    readonly confidenceLevel: FieldRef<"MusicalDnaAnalysis", 'Float'>
    readonly lastSpotifySync: FieldRef<"MusicalDnaAnalysis", 'DateTime'>
    readonly createdAt: FieldRef<"MusicalDnaAnalysis", 'DateTime'>
    readonly updatedAt: FieldRef<"MusicalDnaAnalysis", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * MusicalDnaAnalysis findUnique
   */
  export type MusicalDnaAnalysisFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * Filter, which MusicalDnaAnalysis to fetch.
     */
    where: MusicalDnaAnalysisWhereUniqueInput
  }

  /**
   * MusicalDnaAnalysis findUniqueOrThrow
   */
  export type MusicalDnaAnalysisFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * Filter, which MusicalDnaAnalysis to fetch.
     */
    where: MusicalDnaAnalysisWhereUniqueInput
  }

  /**
   * MusicalDnaAnalysis findFirst
   */
  export type MusicalDnaAnalysisFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * Filter, which MusicalDnaAnalysis to fetch.
     */
    where?: MusicalDnaAnalysisWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of MusicalDnaAnalyses to fetch.
     */
    orderBy?: MusicalDnaAnalysisOrderByWithRelationInput | MusicalDnaAnalysisOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for MusicalDnaAnalyses.
     */
    cursor?: MusicalDnaAnalysisWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` MusicalDnaAnalyses from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` MusicalDnaAnalyses.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of MusicalDnaAnalyses.
     */
    distinct?: MusicalDnaAnalysisScalarFieldEnum | MusicalDnaAnalysisScalarFieldEnum[]
  }

  /**
   * MusicalDnaAnalysis findFirstOrThrow
   */
  export type MusicalDnaAnalysisFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * Filter, which MusicalDnaAnalysis to fetch.
     */
    where?: MusicalDnaAnalysisWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of MusicalDnaAnalyses to fetch.
     */
    orderBy?: MusicalDnaAnalysisOrderByWithRelationInput | MusicalDnaAnalysisOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for MusicalDnaAnalyses.
     */
    cursor?: MusicalDnaAnalysisWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` MusicalDnaAnalyses from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` MusicalDnaAnalyses.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of MusicalDnaAnalyses.
     */
    distinct?: MusicalDnaAnalysisScalarFieldEnum | MusicalDnaAnalysisScalarFieldEnum[]
  }

  /**
   * MusicalDnaAnalysis findMany
   */
  export type MusicalDnaAnalysisFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * Filter, which MusicalDnaAnalyses to fetch.
     */
    where?: MusicalDnaAnalysisWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of MusicalDnaAnalyses to fetch.
     */
    orderBy?: MusicalDnaAnalysisOrderByWithRelationInput | MusicalDnaAnalysisOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing MusicalDnaAnalyses.
     */
    cursor?: MusicalDnaAnalysisWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` MusicalDnaAnalyses from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` MusicalDnaAnalyses.
     */
    skip?: number
    distinct?: MusicalDnaAnalysisScalarFieldEnum | MusicalDnaAnalysisScalarFieldEnum[]
  }

  /**
   * MusicalDnaAnalysis create
   */
  export type MusicalDnaAnalysisCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * The data needed to create a MusicalDnaAnalysis.
     */
    data: XOR<MusicalDnaAnalysisCreateInput, MusicalDnaAnalysisUncheckedCreateInput>
  }

  /**
   * MusicalDnaAnalysis createMany
   */
  export type MusicalDnaAnalysisCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many MusicalDnaAnalyses.
     */
    data: MusicalDnaAnalysisCreateManyInput | MusicalDnaAnalysisCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * MusicalDnaAnalysis createManyAndReturn
   */
  export type MusicalDnaAnalysisCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * The data used to create many MusicalDnaAnalyses.
     */
    data: MusicalDnaAnalysisCreateManyInput | MusicalDnaAnalysisCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * MusicalDnaAnalysis update
   */
  export type MusicalDnaAnalysisUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * The data needed to update a MusicalDnaAnalysis.
     */
    data: XOR<MusicalDnaAnalysisUpdateInput, MusicalDnaAnalysisUncheckedUpdateInput>
    /**
     * Choose, which MusicalDnaAnalysis to update.
     */
    where: MusicalDnaAnalysisWhereUniqueInput
  }

  /**
   * MusicalDnaAnalysis updateMany
   */
  export type MusicalDnaAnalysisUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update MusicalDnaAnalyses.
     */
    data: XOR<MusicalDnaAnalysisUpdateManyMutationInput, MusicalDnaAnalysisUncheckedUpdateManyInput>
    /**
     * Filter which MusicalDnaAnalyses to update
     */
    where?: MusicalDnaAnalysisWhereInput
    /**
     * Limit how many MusicalDnaAnalyses to update.
     */
    limit?: number
  }

  /**
   * MusicalDnaAnalysis updateManyAndReturn
   */
  export type MusicalDnaAnalysisUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * The data used to update MusicalDnaAnalyses.
     */
    data: XOR<MusicalDnaAnalysisUpdateManyMutationInput, MusicalDnaAnalysisUncheckedUpdateManyInput>
    /**
     * Filter which MusicalDnaAnalyses to update
     */
    where?: MusicalDnaAnalysisWhereInput
    /**
     * Limit how many MusicalDnaAnalyses to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * MusicalDnaAnalysis upsert
   */
  export type MusicalDnaAnalysisUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * The filter to search for the MusicalDnaAnalysis to update in case it exists.
     */
    where: MusicalDnaAnalysisWhereUniqueInput
    /**
     * In case the MusicalDnaAnalysis found by the `where` argument doesn't exist, create a new MusicalDnaAnalysis with this data.
     */
    create: XOR<MusicalDnaAnalysisCreateInput, MusicalDnaAnalysisUncheckedCreateInput>
    /**
     * In case the MusicalDnaAnalysis was found with the provided `where` argument, update it with this data.
     */
    update: XOR<MusicalDnaAnalysisUpdateInput, MusicalDnaAnalysisUncheckedUpdateInput>
  }

  /**
   * MusicalDnaAnalysis delete
   */
  export type MusicalDnaAnalysisDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
    /**
     * Filter which MusicalDnaAnalysis to delete.
     */
    where: MusicalDnaAnalysisWhereUniqueInput
  }

  /**
   * MusicalDnaAnalysis deleteMany
   */
  export type MusicalDnaAnalysisDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which MusicalDnaAnalyses to delete
     */
    where?: MusicalDnaAnalysisWhereInput
    /**
     * Limit how many MusicalDnaAnalyses to delete.
     */
    limit?: number
  }

  /**
   * MusicalDnaAnalysis without action
   */
  export type MusicalDnaAnalysisDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the MusicalDnaAnalysis
     */
    select?: MusicalDnaAnalysisSelect<ExtArgs> | null
    /**
     * Omit specific fields from the MusicalDnaAnalysis
     */
    omit?: MusicalDnaAnalysisOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: MusicalDnaAnalysisInclude<ExtArgs> | null
  }


  /**
   * Model ConsciousnessMetric
   */

  export type AggregateConsciousnessMetric = {
    _count: ConsciousnessMetricCountAggregateOutputType | null
    _avg: ConsciousnessMetricAvgAggregateOutputType | null
    _sum: ConsciousnessMetricSumAggregateOutputType | null
    _min: ConsciousnessMetricMinAggregateOutputType | null
    _max: ConsciousnessMetricMaxAggregateOutputType | null
  }

  export type ConsciousnessMetricAvgAggregateOutputType = {
    attentionLevel: number | null
    flowStateIndicator: number | null
    executiveFunctionLoad: number | null
    empowermentMomentum: number | null
    authenticityAlignment: number | null
    consciousnessClarity: number | null
    revolutionaryReadiness: number | null
    energyLevel: number | null
  }

  export type ConsciousnessMetricSumAggregateOutputType = {
    attentionLevel: number | null
    flowStateIndicator: number | null
    executiveFunctionLoad: number | null
    empowermentMomentum: number | null
    authenticityAlignment: number | null
    consciousnessClarity: number | null
    revolutionaryReadiness: number | null
    energyLevel: number | null
  }

  export type ConsciousnessMetricMinAggregateOutputType = {
    id: string | null
    userId: string | null
    attentionLevel: number | null
    flowStateIndicator: number | null
    executiveFunctionLoad: number | null
    hyperfocusActive: boolean | null
    empowermentMomentum: number | null
    authenticityAlignment: number | null
    consciousnessClarity: number | null
    revolutionaryReadiness: number | null
    timeOfDay: string | null
    energyLevel: number | null
    supportNeeded: boolean | null
    interventionType: string | null
    timestamp: Date | null
  }

  export type ConsciousnessMetricMaxAggregateOutputType = {
    id: string | null
    userId: string | null
    attentionLevel: number | null
    flowStateIndicator: number | null
    executiveFunctionLoad: number | null
    hyperfocusActive: boolean | null
    empowermentMomentum: number | null
    authenticityAlignment: number | null
    consciousnessClarity: number | null
    revolutionaryReadiness: number | null
    timeOfDay: string | null
    energyLevel: number | null
    supportNeeded: boolean | null
    interventionType: string | null
    timestamp: Date | null
  }

  export type ConsciousnessMetricCountAggregateOutputType = {
    id: number
    userId: number
    attentionLevel: number
    flowStateIndicator: number
    executiveFunctionLoad: number
    hyperfocusActive: number
    empowermentMomentum: number
    authenticityAlignment: number
    consciousnessClarity: number
    revolutionaryReadiness: number
    environmentalFactors: number
    socialContext: number
    timeOfDay: number
    energyLevel: number
    supportNeeded: number
    interventionType: number
    timestamp: number
    _all: number
  }


  export type ConsciousnessMetricAvgAggregateInputType = {
    attentionLevel?: true
    flowStateIndicator?: true
    executiveFunctionLoad?: true
    empowermentMomentum?: true
    authenticityAlignment?: true
    consciousnessClarity?: true
    revolutionaryReadiness?: true
    energyLevel?: true
  }

  export type ConsciousnessMetricSumAggregateInputType = {
    attentionLevel?: true
    flowStateIndicator?: true
    executiveFunctionLoad?: true
    empowermentMomentum?: true
    authenticityAlignment?: true
    consciousnessClarity?: true
    revolutionaryReadiness?: true
    energyLevel?: true
  }

  export type ConsciousnessMetricMinAggregateInputType = {
    id?: true
    userId?: true
    attentionLevel?: true
    flowStateIndicator?: true
    executiveFunctionLoad?: true
    hyperfocusActive?: true
    empowermentMomentum?: true
    authenticityAlignment?: true
    consciousnessClarity?: true
    revolutionaryReadiness?: true
    timeOfDay?: true
    energyLevel?: true
    supportNeeded?: true
    interventionType?: true
    timestamp?: true
  }

  export type ConsciousnessMetricMaxAggregateInputType = {
    id?: true
    userId?: true
    attentionLevel?: true
    flowStateIndicator?: true
    executiveFunctionLoad?: true
    hyperfocusActive?: true
    empowermentMomentum?: true
    authenticityAlignment?: true
    consciousnessClarity?: true
    revolutionaryReadiness?: true
    timeOfDay?: true
    energyLevel?: true
    supportNeeded?: true
    interventionType?: true
    timestamp?: true
  }

  export type ConsciousnessMetricCountAggregateInputType = {
    id?: true
    userId?: true
    attentionLevel?: true
    flowStateIndicator?: true
    executiveFunctionLoad?: true
    hyperfocusActive?: true
    empowermentMomentum?: true
    authenticityAlignment?: true
    consciousnessClarity?: true
    revolutionaryReadiness?: true
    environmentalFactors?: true
    socialContext?: true
    timeOfDay?: true
    energyLevel?: true
    supportNeeded?: true
    interventionType?: true
    timestamp?: true
    _all?: true
  }

  export type ConsciousnessMetricAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which ConsciousnessMetric to aggregate.
     */
    where?: ConsciousnessMetricWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of ConsciousnessMetrics to fetch.
     */
    orderBy?: ConsciousnessMetricOrderByWithRelationInput | ConsciousnessMetricOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: ConsciousnessMetricWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` ConsciousnessMetrics from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` ConsciousnessMetrics.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned ConsciousnessMetrics
    **/
    _count?: true | ConsciousnessMetricCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: ConsciousnessMetricAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: ConsciousnessMetricSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: ConsciousnessMetricMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: ConsciousnessMetricMaxAggregateInputType
  }

  export type GetConsciousnessMetricAggregateType<T extends ConsciousnessMetricAggregateArgs> = {
        [P in keyof T & keyof AggregateConsciousnessMetric]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateConsciousnessMetric[P]>
      : GetScalarType<T[P], AggregateConsciousnessMetric[P]>
  }




  export type ConsciousnessMetricGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: ConsciousnessMetricWhereInput
    orderBy?: ConsciousnessMetricOrderByWithAggregationInput | ConsciousnessMetricOrderByWithAggregationInput[]
    by: ConsciousnessMetricScalarFieldEnum[] | ConsciousnessMetricScalarFieldEnum
    having?: ConsciousnessMetricScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: ConsciousnessMetricCountAggregateInputType | true
    _avg?: ConsciousnessMetricAvgAggregateInputType
    _sum?: ConsciousnessMetricSumAggregateInputType
    _min?: ConsciousnessMetricMinAggregateInputType
    _max?: ConsciousnessMetricMaxAggregateInputType
  }

  export type ConsciousnessMetricGroupByOutputType = {
    id: string
    userId: string
    attentionLevel: number
    flowStateIndicator: number
    executiveFunctionLoad: number
    hyperfocusActive: boolean
    empowermentMomentum: number
    authenticityAlignment: number
    consciousnessClarity: number
    revolutionaryReadiness: number
    environmentalFactors: JsonValue
    socialContext: JsonValue
    timeOfDay: string | null
    energyLevel: number
    supportNeeded: boolean
    interventionType: string | null
    timestamp: Date
    _count: ConsciousnessMetricCountAggregateOutputType | null
    _avg: ConsciousnessMetricAvgAggregateOutputType | null
    _sum: ConsciousnessMetricSumAggregateOutputType | null
    _min: ConsciousnessMetricMinAggregateOutputType | null
    _max: ConsciousnessMetricMaxAggregateOutputType | null
  }

  type GetConsciousnessMetricGroupByPayload<T extends ConsciousnessMetricGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<ConsciousnessMetricGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof ConsciousnessMetricGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], ConsciousnessMetricGroupByOutputType[P]>
            : GetScalarType<T[P], ConsciousnessMetricGroupByOutputType[P]>
        }
      >
    >


  export type ConsciousnessMetricSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    attentionLevel?: boolean
    flowStateIndicator?: boolean
    executiveFunctionLoad?: boolean
    hyperfocusActive?: boolean
    empowermentMomentum?: boolean
    authenticityAlignment?: boolean
    consciousnessClarity?: boolean
    revolutionaryReadiness?: boolean
    environmentalFactors?: boolean
    socialContext?: boolean
    timeOfDay?: boolean
    energyLevel?: boolean
    supportNeeded?: boolean
    interventionType?: boolean
    timestamp?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["consciousnessMetric"]>

  export type ConsciousnessMetricSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    attentionLevel?: boolean
    flowStateIndicator?: boolean
    executiveFunctionLoad?: boolean
    hyperfocusActive?: boolean
    empowermentMomentum?: boolean
    authenticityAlignment?: boolean
    consciousnessClarity?: boolean
    revolutionaryReadiness?: boolean
    environmentalFactors?: boolean
    socialContext?: boolean
    timeOfDay?: boolean
    energyLevel?: boolean
    supportNeeded?: boolean
    interventionType?: boolean
    timestamp?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["consciousnessMetric"]>

  export type ConsciousnessMetricSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    attentionLevel?: boolean
    flowStateIndicator?: boolean
    executiveFunctionLoad?: boolean
    hyperfocusActive?: boolean
    empowermentMomentum?: boolean
    authenticityAlignment?: boolean
    consciousnessClarity?: boolean
    revolutionaryReadiness?: boolean
    environmentalFactors?: boolean
    socialContext?: boolean
    timeOfDay?: boolean
    energyLevel?: boolean
    supportNeeded?: boolean
    interventionType?: boolean
    timestamp?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["consciousnessMetric"]>

  export type ConsciousnessMetricSelectScalar = {
    id?: boolean
    userId?: boolean
    attentionLevel?: boolean
    flowStateIndicator?: boolean
    executiveFunctionLoad?: boolean
    hyperfocusActive?: boolean
    empowermentMomentum?: boolean
    authenticityAlignment?: boolean
    consciousnessClarity?: boolean
    revolutionaryReadiness?: boolean
    environmentalFactors?: boolean
    socialContext?: boolean
    timeOfDay?: boolean
    energyLevel?: boolean
    supportNeeded?: boolean
    interventionType?: boolean
    timestamp?: boolean
  }

  export type ConsciousnessMetricOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "userId" | "attentionLevel" | "flowStateIndicator" | "executiveFunctionLoad" | "hyperfocusActive" | "empowermentMomentum" | "authenticityAlignment" | "consciousnessClarity" | "revolutionaryReadiness" | "environmentalFactors" | "socialContext" | "timeOfDay" | "energyLevel" | "supportNeeded" | "interventionType" | "timestamp", ExtArgs["result"]["consciousnessMetric"]>
  export type ConsciousnessMetricInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type ConsciousnessMetricIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type ConsciousnessMetricIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }

  export type $ConsciousnessMetricPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "ConsciousnessMetric"
    objects: {
      user: Prisma.$UserPayload<ExtArgs>
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      userId: string
      attentionLevel: number
      flowStateIndicator: number
      executiveFunctionLoad: number
      hyperfocusActive: boolean
      empowermentMomentum: number
      authenticityAlignment: number
      consciousnessClarity: number
      revolutionaryReadiness: number
      environmentalFactors: Prisma.JsonValue
      socialContext: Prisma.JsonValue
      timeOfDay: string | null
      energyLevel: number
      supportNeeded: boolean
      interventionType: string | null
      timestamp: Date
    }, ExtArgs["result"]["consciousnessMetric"]>
    composites: {}
  }

  type ConsciousnessMetricGetPayload<S extends boolean | null | undefined | ConsciousnessMetricDefaultArgs> = $Result.GetResult<Prisma.$ConsciousnessMetricPayload, S>

  type ConsciousnessMetricCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<ConsciousnessMetricFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: ConsciousnessMetricCountAggregateInputType | true
    }

  export interface ConsciousnessMetricDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['ConsciousnessMetric'], meta: { name: 'ConsciousnessMetric' } }
    /**
     * Find zero or one ConsciousnessMetric that matches the filter.
     * @param {ConsciousnessMetricFindUniqueArgs} args - Arguments to find a ConsciousnessMetric
     * @example
     * // Get one ConsciousnessMetric
     * const consciousnessMetric = await prisma.consciousnessMetric.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends ConsciousnessMetricFindUniqueArgs>(args: SelectSubset<T, ConsciousnessMetricFindUniqueArgs<ExtArgs>>): Prisma__ConsciousnessMetricClient<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one ConsciousnessMetric that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {ConsciousnessMetricFindUniqueOrThrowArgs} args - Arguments to find a ConsciousnessMetric
     * @example
     * // Get one ConsciousnessMetric
     * const consciousnessMetric = await prisma.consciousnessMetric.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends ConsciousnessMetricFindUniqueOrThrowArgs>(args: SelectSubset<T, ConsciousnessMetricFindUniqueOrThrowArgs<ExtArgs>>): Prisma__ConsciousnessMetricClient<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first ConsciousnessMetric that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessMetricFindFirstArgs} args - Arguments to find a ConsciousnessMetric
     * @example
     * // Get one ConsciousnessMetric
     * const consciousnessMetric = await prisma.consciousnessMetric.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends ConsciousnessMetricFindFirstArgs>(args?: SelectSubset<T, ConsciousnessMetricFindFirstArgs<ExtArgs>>): Prisma__ConsciousnessMetricClient<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first ConsciousnessMetric that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessMetricFindFirstOrThrowArgs} args - Arguments to find a ConsciousnessMetric
     * @example
     * // Get one ConsciousnessMetric
     * const consciousnessMetric = await prisma.consciousnessMetric.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends ConsciousnessMetricFindFirstOrThrowArgs>(args?: SelectSubset<T, ConsciousnessMetricFindFirstOrThrowArgs<ExtArgs>>): Prisma__ConsciousnessMetricClient<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more ConsciousnessMetrics that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessMetricFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all ConsciousnessMetrics
     * const consciousnessMetrics = await prisma.consciousnessMetric.findMany()
     * 
     * // Get first 10 ConsciousnessMetrics
     * const consciousnessMetrics = await prisma.consciousnessMetric.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const consciousnessMetricWithIdOnly = await prisma.consciousnessMetric.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends ConsciousnessMetricFindManyArgs>(args?: SelectSubset<T, ConsciousnessMetricFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a ConsciousnessMetric.
     * @param {ConsciousnessMetricCreateArgs} args - Arguments to create a ConsciousnessMetric.
     * @example
     * // Create one ConsciousnessMetric
     * const ConsciousnessMetric = await prisma.consciousnessMetric.create({
     *   data: {
     *     // ... data to create a ConsciousnessMetric
     *   }
     * })
     * 
     */
    create<T extends ConsciousnessMetricCreateArgs>(args: SelectSubset<T, ConsciousnessMetricCreateArgs<ExtArgs>>): Prisma__ConsciousnessMetricClient<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many ConsciousnessMetrics.
     * @param {ConsciousnessMetricCreateManyArgs} args - Arguments to create many ConsciousnessMetrics.
     * @example
     * // Create many ConsciousnessMetrics
     * const consciousnessMetric = await prisma.consciousnessMetric.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends ConsciousnessMetricCreateManyArgs>(args?: SelectSubset<T, ConsciousnessMetricCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many ConsciousnessMetrics and returns the data saved in the database.
     * @param {ConsciousnessMetricCreateManyAndReturnArgs} args - Arguments to create many ConsciousnessMetrics.
     * @example
     * // Create many ConsciousnessMetrics
     * const consciousnessMetric = await prisma.consciousnessMetric.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many ConsciousnessMetrics and only return the `id`
     * const consciousnessMetricWithIdOnly = await prisma.consciousnessMetric.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends ConsciousnessMetricCreateManyAndReturnArgs>(args?: SelectSubset<T, ConsciousnessMetricCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a ConsciousnessMetric.
     * @param {ConsciousnessMetricDeleteArgs} args - Arguments to delete one ConsciousnessMetric.
     * @example
     * // Delete one ConsciousnessMetric
     * const ConsciousnessMetric = await prisma.consciousnessMetric.delete({
     *   where: {
     *     // ... filter to delete one ConsciousnessMetric
     *   }
     * })
     * 
     */
    delete<T extends ConsciousnessMetricDeleteArgs>(args: SelectSubset<T, ConsciousnessMetricDeleteArgs<ExtArgs>>): Prisma__ConsciousnessMetricClient<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one ConsciousnessMetric.
     * @param {ConsciousnessMetricUpdateArgs} args - Arguments to update one ConsciousnessMetric.
     * @example
     * // Update one ConsciousnessMetric
     * const consciousnessMetric = await prisma.consciousnessMetric.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends ConsciousnessMetricUpdateArgs>(args: SelectSubset<T, ConsciousnessMetricUpdateArgs<ExtArgs>>): Prisma__ConsciousnessMetricClient<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more ConsciousnessMetrics.
     * @param {ConsciousnessMetricDeleteManyArgs} args - Arguments to filter ConsciousnessMetrics to delete.
     * @example
     * // Delete a few ConsciousnessMetrics
     * const { count } = await prisma.consciousnessMetric.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends ConsciousnessMetricDeleteManyArgs>(args?: SelectSubset<T, ConsciousnessMetricDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more ConsciousnessMetrics.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessMetricUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many ConsciousnessMetrics
     * const consciousnessMetric = await prisma.consciousnessMetric.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends ConsciousnessMetricUpdateManyArgs>(args: SelectSubset<T, ConsciousnessMetricUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more ConsciousnessMetrics and returns the data updated in the database.
     * @param {ConsciousnessMetricUpdateManyAndReturnArgs} args - Arguments to update many ConsciousnessMetrics.
     * @example
     * // Update many ConsciousnessMetrics
     * const consciousnessMetric = await prisma.consciousnessMetric.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more ConsciousnessMetrics and only return the `id`
     * const consciousnessMetricWithIdOnly = await prisma.consciousnessMetric.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends ConsciousnessMetricUpdateManyAndReturnArgs>(args: SelectSubset<T, ConsciousnessMetricUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one ConsciousnessMetric.
     * @param {ConsciousnessMetricUpsertArgs} args - Arguments to update or create a ConsciousnessMetric.
     * @example
     * // Update or create a ConsciousnessMetric
     * const consciousnessMetric = await prisma.consciousnessMetric.upsert({
     *   create: {
     *     // ... data to create a ConsciousnessMetric
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the ConsciousnessMetric we want to update
     *   }
     * })
     */
    upsert<T extends ConsciousnessMetricUpsertArgs>(args: SelectSubset<T, ConsciousnessMetricUpsertArgs<ExtArgs>>): Prisma__ConsciousnessMetricClient<$Result.GetResult<Prisma.$ConsciousnessMetricPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of ConsciousnessMetrics.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessMetricCountArgs} args - Arguments to filter ConsciousnessMetrics to count.
     * @example
     * // Count the number of ConsciousnessMetrics
     * const count = await prisma.consciousnessMetric.count({
     *   where: {
     *     // ... the filter for the ConsciousnessMetrics we want to count
     *   }
     * })
    **/
    count<T extends ConsciousnessMetricCountArgs>(
      args?: Subset<T, ConsciousnessMetricCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], ConsciousnessMetricCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a ConsciousnessMetric.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessMetricAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends ConsciousnessMetricAggregateArgs>(args: Subset<T, ConsciousnessMetricAggregateArgs>): Prisma.PrismaPromise<GetConsciousnessMetricAggregateType<T>>

    /**
     * Group by ConsciousnessMetric.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ConsciousnessMetricGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends ConsciousnessMetricGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: ConsciousnessMetricGroupByArgs['orderBy'] }
        : { orderBy?: ConsciousnessMetricGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, ConsciousnessMetricGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetConsciousnessMetricGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the ConsciousnessMetric model
   */
  readonly fields: ConsciousnessMetricFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for ConsciousnessMetric.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__ConsciousnessMetricClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    user<T extends UserDefaultArgs<ExtArgs> = {}>(args?: Subset<T, UserDefaultArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the ConsciousnessMetric model
   */
  interface ConsciousnessMetricFieldRefs {
    readonly id: FieldRef<"ConsciousnessMetric", 'String'>
    readonly userId: FieldRef<"ConsciousnessMetric", 'String'>
    readonly attentionLevel: FieldRef<"ConsciousnessMetric", 'Int'>
    readonly flowStateIndicator: FieldRef<"ConsciousnessMetric", 'Float'>
    readonly executiveFunctionLoad: FieldRef<"ConsciousnessMetric", 'Float'>
    readonly hyperfocusActive: FieldRef<"ConsciousnessMetric", 'Boolean'>
    readonly empowermentMomentum: FieldRef<"ConsciousnessMetric", 'Float'>
    readonly authenticityAlignment: FieldRef<"ConsciousnessMetric", 'Float'>
    readonly consciousnessClarity: FieldRef<"ConsciousnessMetric", 'Float'>
    readonly revolutionaryReadiness: FieldRef<"ConsciousnessMetric", 'Float'>
    readonly environmentalFactors: FieldRef<"ConsciousnessMetric", 'Json'>
    readonly socialContext: FieldRef<"ConsciousnessMetric", 'Json'>
    readonly timeOfDay: FieldRef<"ConsciousnessMetric", 'String'>
    readonly energyLevel: FieldRef<"ConsciousnessMetric", 'Int'>
    readonly supportNeeded: FieldRef<"ConsciousnessMetric", 'Boolean'>
    readonly interventionType: FieldRef<"ConsciousnessMetric", 'String'>
    readonly timestamp: FieldRef<"ConsciousnessMetric", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * ConsciousnessMetric findUnique
   */
  export type ConsciousnessMetricFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessMetric to fetch.
     */
    where: ConsciousnessMetricWhereUniqueInput
  }

  /**
   * ConsciousnessMetric findUniqueOrThrow
   */
  export type ConsciousnessMetricFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessMetric to fetch.
     */
    where: ConsciousnessMetricWhereUniqueInput
  }

  /**
   * ConsciousnessMetric findFirst
   */
  export type ConsciousnessMetricFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessMetric to fetch.
     */
    where?: ConsciousnessMetricWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of ConsciousnessMetrics to fetch.
     */
    orderBy?: ConsciousnessMetricOrderByWithRelationInput | ConsciousnessMetricOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for ConsciousnessMetrics.
     */
    cursor?: ConsciousnessMetricWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` ConsciousnessMetrics from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` ConsciousnessMetrics.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of ConsciousnessMetrics.
     */
    distinct?: ConsciousnessMetricScalarFieldEnum | ConsciousnessMetricScalarFieldEnum[]
  }

  /**
   * ConsciousnessMetric findFirstOrThrow
   */
  export type ConsciousnessMetricFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessMetric to fetch.
     */
    where?: ConsciousnessMetricWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of ConsciousnessMetrics to fetch.
     */
    orderBy?: ConsciousnessMetricOrderByWithRelationInput | ConsciousnessMetricOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for ConsciousnessMetrics.
     */
    cursor?: ConsciousnessMetricWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` ConsciousnessMetrics from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` ConsciousnessMetrics.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of ConsciousnessMetrics.
     */
    distinct?: ConsciousnessMetricScalarFieldEnum | ConsciousnessMetricScalarFieldEnum[]
  }

  /**
   * ConsciousnessMetric findMany
   */
  export type ConsciousnessMetricFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * Filter, which ConsciousnessMetrics to fetch.
     */
    where?: ConsciousnessMetricWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of ConsciousnessMetrics to fetch.
     */
    orderBy?: ConsciousnessMetricOrderByWithRelationInput | ConsciousnessMetricOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing ConsciousnessMetrics.
     */
    cursor?: ConsciousnessMetricWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` ConsciousnessMetrics from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` ConsciousnessMetrics.
     */
    skip?: number
    distinct?: ConsciousnessMetricScalarFieldEnum | ConsciousnessMetricScalarFieldEnum[]
  }

  /**
   * ConsciousnessMetric create
   */
  export type ConsciousnessMetricCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * The data needed to create a ConsciousnessMetric.
     */
    data: XOR<ConsciousnessMetricCreateInput, ConsciousnessMetricUncheckedCreateInput>
  }

  /**
   * ConsciousnessMetric createMany
   */
  export type ConsciousnessMetricCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many ConsciousnessMetrics.
     */
    data: ConsciousnessMetricCreateManyInput | ConsciousnessMetricCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * ConsciousnessMetric createManyAndReturn
   */
  export type ConsciousnessMetricCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * The data used to create many ConsciousnessMetrics.
     */
    data: ConsciousnessMetricCreateManyInput | ConsciousnessMetricCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * ConsciousnessMetric update
   */
  export type ConsciousnessMetricUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * The data needed to update a ConsciousnessMetric.
     */
    data: XOR<ConsciousnessMetricUpdateInput, ConsciousnessMetricUncheckedUpdateInput>
    /**
     * Choose, which ConsciousnessMetric to update.
     */
    where: ConsciousnessMetricWhereUniqueInput
  }

  /**
   * ConsciousnessMetric updateMany
   */
  export type ConsciousnessMetricUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update ConsciousnessMetrics.
     */
    data: XOR<ConsciousnessMetricUpdateManyMutationInput, ConsciousnessMetricUncheckedUpdateManyInput>
    /**
     * Filter which ConsciousnessMetrics to update
     */
    where?: ConsciousnessMetricWhereInput
    /**
     * Limit how many ConsciousnessMetrics to update.
     */
    limit?: number
  }

  /**
   * ConsciousnessMetric updateManyAndReturn
   */
  export type ConsciousnessMetricUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * The data used to update ConsciousnessMetrics.
     */
    data: XOR<ConsciousnessMetricUpdateManyMutationInput, ConsciousnessMetricUncheckedUpdateManyInput>
    /**
     * Filter which ConsciousnessMetrics to update
     */
    where?: ConsciousnessMetricWhereInput
    /**
     * Limit how many ConsciousnessMetrics to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * ConsciousnessMetric upsert
   */
  export type ConsciousnessMetricUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * The filter to search for the ConsciousnessMetric to update in case it exists.
     */
    where: ConsciousnessMetricWhereUniqueInput
    /**
     * In case the ConsciousnessMetric found by the `where` argument doesn't exist, create a new ConsciousnessMetric with this data.
     */
    create: XOR<ConsciousnessMetricCreateInput, ConsciousnessMetricUncheckedCreateInput>
    /**
     * In case the ConsciousnessMetric was found with the provided `where` argument, update it with this data.
     */
    update: XOR<ConsciousnessMetricUpdateInput, ConsciousnessMetricUncheckedUpdateInput>
  }

  /**
   * ConsciousnessMetric delete
   */
  export type ConsciousnessMetricDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
    /**
     * Filter which ConsciousnessMetric to delete.
     */
    where: ConsciousnessMetricWhereUniqueInput
  }

  /**
   * ConsciousnessMetric deleteMany
   */
  export type ConsciousnessMetricDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which ConsciousnessMetrics to delete
     */
    where?: ConsciousnessMetricWhereInput
    /**
     * Limit how many ConsciousnessMetrics to delete.
     */
    limit?: number
  }

  /**
   * ConsciousnessMetric without action
   */
  export type ConsciousnessMetricDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the ConsciousnessMetric
     */
    select?: ConsciousnessMetricSelect<ExtArgs> | null
    /**
     * Omit specific fields from the ConsciousnessMetric
     */
    omit?: ConsciousnessMetricOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ConsciousnessMetricInclude<ExtArgs> | null
  }


  /**
   * Model EmpowermentEvent
   */

  export type AggregateEmpowermentEvent = {
    _count: EmpowermentEventCountAggregateOutputType | null
    _avg: EmpowermentEventAvgAggregateOutputType | null
    _sum: EmpowermentEventSumAggregateOutputType | null
    _min: EmpowermentEventMinAggregateOutputType | null
    _max: EmpowermentEventMaxAggregateOutputType | null
  }

  export type EmpowermentEventAvgAggregateOutputType = {
    intensityLevel: number | null
    consciousnessShift: number | null
    empowermentIncrease: number | null
    revolutionaryPotential: number | null
  }

  export type EmpowermentEventSumAggregateOutputType = {
    intensityLevel: number | null
    consciousnessShift: number | null
    empowermentIncrease: number | null
    revolutionaryPotential: number | null
  }

  export type EmpowermentEventMinAggregateOutputType = {
    id: string | null
    userId: string | null
    eventType: string | null
    description: string | null
    intensityLevel: number | null
    scarsToCodeMoment: boolean | null
    chaosCurrentRealized: boolean | null
    jazzFrequencyTuned: boolean | null
    sourceType: string | null
    bucketDropId: string | null
    consciousnessShift: number | null
    empowermentIncrease: number | null
    revolutionaryPotential: number | null
    aiValidated: boolean | null
    userConfirmed: boolean | null
    createdAt: Date | null
  }

  export type EmpowermentEventMaxAggregateOutputType = {
    id: string | null
    userId: string | null
    eventType: string | null
    description: string | null
    intensityLevel: number | null
    scarsToCodeMoment: boolean | null
    chaosCurrentRealized: boolean | null
    jazzFrequencyTuned: boolean | null
    sourceType: string | null
    bucketDropId: string | null
    consciousnessShift: number | null
    empowermentIncrease: number | null
    revolutionaryPotential: number | null
    aiValidated: boolean | null
    userConfirmed: boolean | null
    createdAt: Date | null
  }

  export type EmpowermentEventCountAggregateOutputType = {
    id: number
    userId: number
    eventType: number
    description: number
    intensityLevel: number
    scarsToCodeMoment: number
    chaosCurrentRealized: number
    jazzFrequencyTuned: number
    sourceType: number
    bucketDropId: number
    consciousnessShift: number
    empowermentIncrease: number
    revolutionaryPotential: number
    aiValidated: number
    userConfirmed: number
    createdAt: number
    _all: number
  }


  export type EmpowermentEventAvgAggregateInputType = {
    intensityLevel?: true
    consciousnessShift?: true
    empowermentIncrease?: true
    revolutionaryPotential?: true
  }

  export type EmpowermentEventSumAggregateInputType = {
    intensityLevel?: true
    consciousnessShift?: true
    empowermentIncrease?: true
    revolutionaryPotential?: true
  }

  export type EmpowermentEventMinAggregateInputType = {
    id?: true
    userId?: true
    eventType?: true
    description?: true
    intensityLevel?: true
    scarsToCodeMoment?: true
    chaosCurrentRealized?: true
    jazzFrequencyTuned?: true
    sourceType?: true
    bucketDropId?: true
    consciousnessShift?: true
    empowermentIncrease?: true
    revolutionaryPotential?: true
    aiValidated?: true
    userConfirmed?: true
    createdAt?: true
  }

  export type EmpowermentEventMaxAggregateInputType = {
    id?: true
    userId?: true
    eventType?: true
    description?: true
    intensityLevel?: true
    scarsToCodeMoment?: true
    chaosCurrentRealized?: true
    jazzFrequencyTuned?: true
    sourceType?: true
    bucketDropId?: true
    consciousnessShift?: true
    empowermentIncrease?: true
    revolutionaryPotential?: true
    aiValidated?: true
    userConfirmed?: true
    createdAt?: true
  }

  export type EmpowermentEventCountAggregateInputType = {
    id?: true
    userId?: true
    eventType?: true
    description?: true
    intensityLevel?: true
    scarsToCodeMoment?: true
    chaosCurrentRealized?: true
    jazzFrequencyTuned?: true
    sourceType?: true
    bucketDropId?: true
    consciousnessShift?: true
    empowermentIncrease?: true
    revolutionaryPotential?: true
    aiValidated?: true
    userConfirmed?: true
    createdAt?: true
    _all?: true
  }

  export type EmpowermentEventAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which EmpowermentEvent to aggregate.
     */
    where?: EmpowermentEventWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of EmpowermentEvents to fetch.
     */
    orderBy?: EmpowermentEventOrderByWithRelationInput | EmpowermentEventOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: EmpowermentEventWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` EmpowermentEvents from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` EmpowermentEvents.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned EmpowermentEvents
    **/
    _count?: true | EmpowermentEventCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: EmpowermentEventAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: EmpowermentEventSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: EmpowermentEventMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: EmpowermentEventMaxAggregateInputType
  }

  export type GetEmpowermentEventAggregateType<T extends EmpowermentEventAggregateArgs> = {
        [P in keyof T & keyof AggregateEmpowermentEvent]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateEmpowermentEvent[P]>
      : GetScalarType<T[P], AggregateEmpowermentEvent[P]>
  }




  export type EmpowermentEventGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: EmpowermentEventWhereInput
    orderBy?: EmpowermentEventOrderByWithAggregationInput | EmpowermentEventOrderByWithAggregationInput[]
    by: EmpowermentEventScalarFieldEnum[] | EmpowermentEventScalarFieldEnum
    having?: EmpowermentEventScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: EmpowermentEventCountAggregateInputType | true
    _avg?: EmpowermentEventAvgAggregateInputType
    _sum?: EmpowermentEventSumAggregateInputType
    _min?: EmpowermentEventMinAggregateInputType
    _max?: EmpowermentEventMaxAggregateInputType
  }

  export type EmpowermentEventGroupByOutputType = {
    id: string
    userId: string
    eventType: string
    description: string
    intensityLevel: number
    scarsToCodeMoment: boolean
    chaosCurrentRealized: boolean
    jazzFrequencyTuned: boolean
    sourceType: string | null
    bucketDropId: string | null
    consciousnessShift: number
    empowermentIncrease: number
    revolutionaryPotential: number
    aiValidated: boolean
    userConfirmed: boolean
    createdAt: Date
    _count: EmpowermentEventCountAggregateOutputType | null
    _avg: EmpowermentEventAvgAggregateOutputType | null
    _sum: EmpowermentEventSumAggregateOutputType | null
    _min: EmpowermentEventMinAggregateOutputType | null
    _max: EmpowermentEventMaxAggregateOutputType | null
  }

  type GetEmpowermentEventGroupByPayload<T extends EmpowermentEventGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<EmpowermentEventGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof EmpowermentEventGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], EmpowermentEventGroupByOutputType[P]>
            : GetScalarType<T[P], EmpowermentEventGroupByOutputType[P]>
        }
      >
    >


  export type EmpowermentEventSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    eventType?: boolean
    description?: boolean
    intensityLevel?: boolean
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: boolean
    bucketDropId?: boolean
    consciousnessShift?: boolean
    empowermentIncrease?: boolean
    revolutionaryPotential?: boolean
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | EmpowermentEvent$bucketDropArgs<ExtArgs>
  }, ExtArgs["result"]["empowermentEvent"]>

  export type EmpowermentEventSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    eventType?: boolean
    description?: boolean
    intensityLevel?: boolean
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: boolean
    bucketDropId?: boolean
    consciousnessShift?: boolean
    empowermentIncrease?: boolean
    revolutionaryPotential?: boolean
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | EmpowermentEvent$bucketDropArgs<ExtArgs>
  }, ExtArgs["result"]["empowermentEvent"]>

  export type EmpowermentEventSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    eventType?: boolean
    description?: boolean
    intensityLevel?: boolean
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: boolean
    bucketDropId?: boolean
    consciousnessShift?: boolean
    empowermentIncrease?: boolean
    revolutionaryPotential?: boolean
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | EmpowermentEvent$bucketDropArgs<ExtArgs>
  }, ExtArgs["result"]["empowermentEvent"]>

  export type EmpowermentEventSelectScalar = {
    id?: boolean
    userId?: boolean
    eventType?: boolean
    description?: boolean
    intensityLevel?: boolean
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: boolean
    bucketDropId?: boolean
    consciousnessShift?: boolean
    empowermentIncrease?: boolean
    revolutionaryPotential?: boolean
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: boolean
  }

  export type EmpowermentEventOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "userId" | "eventType" | "description" | "intensityLevel" | "scarsToCodeMoment" | "chaosCurrentRealized" | "jazzFrequencyTuned" | "sourceType" | "bucketDropId" | "consciousnessShift" | "empowermentIncrease" | "revolutionaryPotential" | "aiValidated" | "userConfirmed" | "createdAt", ExtArgs["result"]["empowermentEvent"]>
  export type EmpowermentEventInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | EmpowermentEvent$bucketDropArgs<ExtArgs>
  }
  export type EmpowermentEventIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | EmpowermentEvent$bucketDropArgs<ExtArgs>
  }
  export type EmpowermentEventIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
    bucketDrop?: boolean | EmpowermentEvent$bucketDropArgs<ExtArgs>
  }

  export type $EmpowermentEventPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "EmpowermentEvent"
    objects: {
      user: Prisma.$UserPayload<ExtArgs>
      bucketDrop: Prisma.$BucketDropPayload<ExtArgs> | null
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      userId: string
      eventType: string
      description: string
      intensityLevel: number
      scarsToCodeMoment: boolean
      chaosCurrentRealized: boolean
      jazzFrequencyTuned: boolean
      sourceType: string | null
      bucketDropId: string | null
      consciousnessShift: number
      empowermentIncrease: number
      revolutionaryPotential: number
      aiValidated: boolean
      userConfirmed: boolean
      createdAt: Date
    }, ExtArgs["result"]["empowermentEvent"]>
    composites: {}
  }

  type EmpowermentEventGetPayload<S extends boolean | null | undefined | EmpowermentEventDefaultArgs> = $Result.GetResult<Prisma.$EmpowermentEventPayload, S>

  type EmpowermentEventCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<EmpowermentEventFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: EmpowermentEventCountAggregateInputType | true
    }

  export interface EmpowermentEventDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['EmpowermentEvent'], meta: { name: 'EmpowermentEvent' } }
    /**
     * Find zero or one EmpowermentEvent that matches the filter.
     * @param {EmpowermentEventFindUniqueArgs} args - Arguments to find a EmpowermentEvent
     * @example
     * // Get one EmpowermentEvent
     * const empowermentEvent = await prisma.empowermentEvent.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends EmpowermentEventFindUniqueArgs>(args: SelectSubset<T, EmpowermentEventFindUniqueArgs<ExtArgs>>): Prisma__EmpowermentEventClient<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one EmpowermentEvent that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {EmpowermentEventFindUniqueOrThrowArgs} args - Arguments to find a EmpowermentEvent
     * @example
     * // Get one EmpowermentEvent
     * const empowermentEvent = await prisma.empowermentEvent.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends EmpowermentEventFindUniqueOrThrowArgs>(args: SelectSubset<T, EmpowermentEventFindUniqueOrThrowArgs<ExtArgs>>): Prisma__EmpowermentEventClient<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first EmpowermentEvent that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {EmpowermentEventFindFirstArgs} args - Arguments to find a EmpowermentEvent
     * @example
     * // Get one EmpowermentEvent
     * const empowermentEvent = await prisma.empowermentEvent.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends EmpowermentEventFindFirstArgs>(args?: SelectSubset<T, EmpowermentEventFindFirstArgs<ExtArgs>>): Prisma__EmpowermentEventClient<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first EmpowermentEvent that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {EmpowermentEventFindFirstOrThrowArgs} args - Arguments to find a EmpowermentEvent
     * @example
     * // Get one EmpowermentEvent
     * const empowermentEvent = await prisma.empowermentEvent.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends EmpowermentEventFindFirstOrThrowArgs>(args?: SelectSubset<T, EmpowermentEventFindFirstOrThrowArgs<ExtArgs>>): Prisma__EmpowermentEventClient<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more EmpowermentEvents that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {EmpowermentEventFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all EmpowermentEvents
     * const empowermentEvents = await prisma.empowermentEvent.findMany()
     * 
     * // Get first 10 EmpowermentEvents
     * const empowermentEvents = await prisma.empowermentEvent.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const empowermentEventWithIdOnly = await prisma.empowermentEvent.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends EmpowermentEventFindManyArgs>(args?: SelectSubset<T, EmpowermentEventFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a EmpowermentEvent.
     * @param {EmpowermentEventCreateArgs} args - Arguments to create a EmpowermentEvent.
     * @example
     * // Create one EmpowermentEvent
     * const EmpowermentEvent = await prisma.empowermentEvent.create({
     *   data: {
     *     // ... data to create a EmpowermentEvent
     *   }
     * })
     * 
     */
    create<T extends EmpowermentEventCreateArgs>(args: SelectSubset<T, EmpowermentEventCreateArgs<ExtArgs>>): Prisma__EmpowermentEventClient<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many EmpowermentEvents.
     * @param {EmpowermentEventCreateManyArgs} args - Arguments to create many EmpowermentEvents.
     * @example
     * // Create many EmpowermentEvents
     * const empowermentEvent = await prisma.empowermentEvent.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends EmpowermentEventCreateManyArgs>(args?: SelectSubset<T, EmpowermentEventCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many EmpowermentEvents and returns the data saved in the database.
     * @param {EmpowermentEventCreateManyAndReturnArgs} args - Arguments to create many EmpowermentEvents.
     * @example
     * // Create many EmpowermentEvents
     * const empowermentEvent = await prisma.empowermentEvent.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many EmpowermentEvents and only return the `id`
     * const empowermentEventWithIdOnly = await prisma.empowermentEvent.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends EmpowermentEventCreateManyAndReturnArgs>(args?: SelectSubset<T, EmpowermentEventCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a EmpowermentEvent.
     * @param {EmpowermentEventDeleteArgs} args - Arguments to delete one EmpowermentEvent.
     * @example
     * // Delete one EmpowermentEvent
     * const EmpowermentEvent = await prisma.empowermentEvent.delete({
     *   where: {
     *     // ... filter to delete one EmpowermentEvent
     *   }
     * })
     * 
     */
    delete<T extends EmpowermentEventDeleteArgs>(args: SelectSubset<T, EmpowermentEventDeleteArgs<ExtArgs>>): Prisma__EmpowermentEventClient<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one EmpowermentEvent.
     * @param {EmpowermentEventUpdateArgs} args - Arguments to update one EmpowermentEvent.
     * @example
     * // Update one EmpowermentEvent
     * const empowermentEvent = await prisma.empowermentEvent.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends EmpowermentEventUpdateArgs>(args: SelectSubset<T, EmpowermentEventUpdateArgs<ExtArgs>>): Prisma__EmpowermentEventClient<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more EmpowermentEvents.
     * @param {EmpowermentEventDeleteManyArgs} args - Arguments to filter EmpowermentEvents to delete.
     * @example
     * // Delete a few EmpowermentEvents
     * const { count } = await prisma.empowermentEvent.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends EmpowermentEventDeleteManyArgs>(args?: SelectSubset<T, EmpowermentEventDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more EmpowermentEvents.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {EmpowermentEventUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many EmpowermentEvents
     * const empowermentEvent = await prisma.empowermentEvent.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends EmpowermentEventUpdateManyArgs>(args: SelectSubset<T, EmpowermentEventUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more EmpowermentEvents and returns the data updated in the database.
     * @param {EmpowermentEventUpdateManyAndReturnArgs} args - Arguments to update many EmpowermentEvents.
     * @example
     * // Update many EmpowermentEvents
     * const empowermentEvent = await prisma.empowermentEvent.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more EmpowermentEvents and only return the `id`
     * const empowermentEventWithIdOnly = await prisma.empowermentEvent.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends EmpowermentEventUpdateManyAndReturnArgs>(args: SelectSubset<T, EmpowermentEventUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one EmpowermentEvent.
     * @param {EmpowermentEventUpsertArgs} args - Arguments to update or create a EmpowermentEvent.
     * @example
     * // Update or create a EmpowermentEvent
     * const empowermentEvent = await prisma.empowermentEvent.upsert({
     *   create: {
     *     // ... data to create a EmpowermentEvent
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the EmpowermentEvent we want to update
     *   }
     * })
     */
    upsert<T extends EmpowermentEventUpsertArgs>(args: SelectSubset<T, EmpowermentEventUpsertArgs<ExtArgs>>): Prisma__EmpowermentEventClient<$Result.GetResult<Prisma.$EmpowermentEventPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of EmpowermentEvents.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {EmpowermentEventCountArgs} args - Arguments to filter EmpowermentEvents to count.
     * @example
     * // Count the number of EmpowermentEvents
     * const count = await prisma.empowermentEvent.count({
     *   where: {
     *     // ... the filter for the EmpowermentEvents we want to count
     *   }
     * })
    **/
    count<T extends EmpowermentEventCountArgs>(
      args?: Subset<T, EmpowermentEventCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], EmpowermentEventCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a EmpowermentEvent.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {EmpowermentEventAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends EmpowermentEventAggregateArgs>(args: Subset<T, EmpowermentEventAggregateArgs>): Prisma.PrismaPromise<GetEmpowermentEventAggregateType<T>>

    /**
     * Group by EmpowermentEvent.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {EmpowermentEventGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends EmpowermentEventGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: EmpowermentEventGroupByArgs['orderBy'] }
        : { orderBy?: EmpowermentEventGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, EmpowermentEventGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetEmpowermentEventGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the EmpowermentEvent model
   */
  readonly fields: EmpowermentEventFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for EmpowermentEvent.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__EmpowermentEventClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    user<T extends UserDefaultArgs<ExtArgs> = {}>(args?: Subset<T, UserDefaultArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    bucketDrop<T extends EmpowermentEvent$bucketDropArgs<ExtArgs> = {}>(args?: Subset<T, EmpowermentEvent$bucketDropArgs<ExtArgs>>): Prisma__BucketDropClient<$Result.GetResult<Prisma.$BucketDropPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the EmpowermentEvent model
   */
  interface EmpowermentEventFieldRefs {
    readonly id: FieldRef<"EmpowermentEvent", 'String'>
    readonly userId: FieldRef<"EmpowermentEvent", 'String'>
    readonly eventType: FieldRef<"EmpowermentEvent", 'String'>
    readonly description: FieldRef<"EmpowermentEvent", 'String'>
    readonly intensityLevel: FieldRef<"EmpowermentEvent", 'Float'>
    readonly scarsToCodeMoment: FieldRef<"EmpowermentEvent", 'Boolean'>
    readonly chaosCurrentRealized: FieldRef<"EmpowermentEvent", 'Boolean'>
    readonly jazzFrequencyTuned: FieldRef<"EmpowermentEvent", 'Boolean'>
    readonly sourceType: FieldRef<"EmpowermentEvent", 'String'>
    readonly bucketDropId: FieldRef<"EmpowermentEvent", 'String'>
    readonly consciousnessShift: FieldRef<"EmpowermentEvent", 'Float'>
    readonly empowermentIncrease: FieldRef<"EmpowermentEvent", 'Float'>
    readonly revolutionaryPotential: FieldRef<"EmpowermentEvent", 'Float'>
    readonly aiValidated: FieldRef<"EmpowermentEvent", 'Boolean'>
    readonly userConfirmed: FieldRef<"EmpowermentEvent", 'Boolean'>
    readonly createdAt: FieldRef<"EmpowermentEvent", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * EmpowermentEvent findUnique
   */
  export type EmpowermentEventFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * Filter, which EmpowermentEvent to fetch.
     */
    where: EmpowermentEventWhereUniqueInput
  }

  /**
   * EmpowermentEvent findUniqueOrThrow
   */
  export type EmpowermentEventFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * Filter, which EmpowermentEvent to fetch.
     */
    where: EmpowermentEventWhereUniqueInput
  }

  /**
   * EmpowermentEvent findFirst
   */
  export type EmpowermentEventFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * Filter, which EmpowermentEvent to fetch.
     */
    where?: EmpowermentEventWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of EmpowermentEvents to fetch.
     */
    orderBy?: EmpowermentEventOrderByWithRelationInput | EmpowermentEventOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for EmpowermentEvents.
     */
    cursor?: EmpowermentEventWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` EmpowermentEvents from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` EmpowermentEvents.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of EmpowermentEvents.
     */
    distinct?: EmpowermentEventScalarFieldEnum | EmpowermentEventScalarFieldEnum[]
  }

  /**
   * EmpowermentEvent findFirstOrThrow
   */
  export type EmpowermentEventFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * Filter, which EmpowermentEvent to fetch.
     */
    where?: EmpowermentEventWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of EmpowermentEvents to fetch.
     */
    orderBy?: EmpowermentEventOrderByWithRelationInput | EmpowermentEventOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for EmpowermentEvents.
     */
    cursor?: EmpowermentEventWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` EmpowermentEvents from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` EmpowermentEvents.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of EmpowermentEvents.
     */
    distinct?: EmpowermentEventScalarFieldEnum | EmpowermentEventScalarFieldEnum[]
  }

  /**
   * EmpowermentEvent findMany
   */
  export type EmpowermentEventFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * Filter, which EmpowermentEvents to fetch.
     */
    where?: EmpowermentEventWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of EmpowermentEvents to fetch.
     */
    orderBy?: EmpowermentEventOrderByWithRelationInput | EmpowermentEventOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing EmpowermentEvents.
     */
    cursor?: EmpowermentEventWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` EmpowermentEvents from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` EmpowermentEvents.
     */
    skip?: number
    distinct?: EmpowermentEventScalarFieldEnum | EmpowermentEventScalarFieldEnum[]
  }

  /**
   * EmpowermentEvent create
   */
  export type EmpowermentEventCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * The data needed to create a EmpowermentEvent.
     */
    data: XOR<EmpowermentEventCreateInput, EmpowermentEventUncheckedCreateInput>
  }

  /**
   * EmpowermentEvent createMany
   */
  export type EmpowermentEventCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many EmpowermentEvents.
     */
    data: EmpowermentEventCreateManyInput | EmpowermentEventCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * EmpowermentEvent createManyAndReturn
   */
  export type EmpowermentEventCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * The data used to create many EmpowermentEvents.
     */
    data: EmpowermentEventCreateManyInput | EmpowermentEventCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * EmpowermentEvent update
   */
  export type EmpowermentEventUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * The data needed to update a EmpowermentEvent.
     */
    data: XOR<EmpowermentEventUpdateInput, EmpowermentEventUncheckedUpdateInput>
    /**
     * Choose, which EmpowermentEvent to update.
     */
    where: EmpowermentEventWhereUniqueInput
  }

  /**
   * EmpowermentEvent updateMany
   */
  export type EmpowermentEventUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update EmpowermentEvents.
     */
    data: XOR<EmpowermentEventUpdateManyMutationInput, EmpowermentEventUncheckedUpdateManyInput>
    /**
     * Filter which EmpowermentEvents to update
     */
    where?: EmpowermentEventWhereInput
    /**
     * Limit how many EmpowermentEvents to update.
     */
    limit?: number
  }

  /**
   * EmpowermentEvent updateManyAndReturn
   */
  export type EmpowermentEventUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * The data used to update EmpowermentEvents.
     */
    data: XOR<EmpowermentEventUpdateManyMutationInput, EmpowermentEventUncheckedUpdateManyInput>
    /**
     * Filter which EmpowermentEvents to update
     */
    where?: EmpowermentEventWhereInput
    /**
     * Limit how many EmpowermentEvents to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * EmpowermentEvent upsert
   */
  export type EmpowermentEventUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * The filter to search for the EmpowermentEvent to update in case it exists.
     */
    where: EmpowermentEventWhereUniqueInput
    /**
     * In case the EmpowermentEvent found by the `where` argument doesn't exist, create a new EmpowermentEvent with this data.
     */
    create: XOR<EmpowermentEventCreateInput, EmpowermentEventUncheckedCreateInput>
    /**
     * In case the EmpowermentEvent was found with the provided `where` argument, update it with this data.
     */
    update: XOR<EmpowermentEventUpdateInput, EmpowermentEventUncheckedUpdateInput>
  }

  /**
   * EmpowermentEvent delete
   */
  export type EmpowermentEventDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
    /**
     * Filter which EmpowermentEvent to delete.
     */
    where: EmpowermentEventWhereUniqueInput
  }

  /**
   * EmpowermentEvent deleteMany
   */
  export type EmpowermentEventDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which EmpowermentEvents to delete
     */
    where?: EmpowermentEventWhereInput
    /**
     * Limit how many EmpowermentEvents to delete.
     */
    limit?: number
  }

  /**
   * EmpowermentEvent.bucketDrop
   */
  export type EmpowermentEvent$bucketDropArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the BucketDrop
     */
    select?: BucketDropSelect<ExtArgs> | null
    /**
     * Omit specific fields from the BucketDrop
     */
    omit?: BucketDropOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: BucketDropInclude<ExtArgs> | null
    where?: BucketDropWhereInput
  }

  /**
   * EmpowermentEvent without action
   */
  export type EmpowermentEventDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the EmpowermentEvent
     */
    select?: EmpowermentEventSelect<ExtArgs> | null
    /**
     * Omit specific fields from the EmpowermentEvent
     */
    omit?: EmpowermentEventOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: EmpowermentEventInclude<ExtArgs> | null
  }


  /**
   * Model Subscription
   */

  export type AggregateSubscription = {
    _count: SubscriptionCountAggregateOutputType | null
    _min: SubscriptionMinAggregateOutputType | null
    _max: SubscriptionMaxAggregateOutputType | null
  }

  export type SubscriptionMinAggregateOutputType = {
    id: string | null
    userId: string | null
    stripeCustomerId: string | null
    stripeSubscriptionId: string | null
    stripePriceId: string | null
    tier: string | null
    status: string | null
    tribunalAccess: boolean | null
    musicalDnaUnlocked: boolean | null
    tapestryAdvanced: boolean | null
    keithDirectAccess: boolean | null
    currentPeriodStart: Date | null
    currentPeriodEnd: Date | null
    cancelAtPeriodEnd: boolean | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type SubscriptionMaxAggregateOutputType = {
    id: string | null
    userId: string | null
    stripeCustomerId: string | null
    stripeSubscriptionId: string | null
    stripePriceId: string | null
    tier: string | null
    status: string | null
    tribunalAccess: boolean | null
    musicalDnaUnlocked: boolean | null
    tapestryAdvanced: boolean | null
    keithDirectAccess: boolean | null
    currentPeriodStart: Date | null
    currentPeriodEnd: Date | null
    cancelAtPeriodEnd: boolean | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type SubscriptionCountAggregateOutputType = {
    id: number
    userId: number
    stripeCustomerId: number
    stripeSubscriptionId: number
    stripePriceId: number
    tier: number
    status: number
    tribunalAccess: number
    musicalDnaUnlocked: number
    tapestryAdvanced: number
    keithDirectAccess: number
    currentPeriodStart: number
    currentPeriodEnd: number
    cancelAtPeriodEnd: number
    createdAt: number
    updatedAt: number
    _all: number
  }


  export type SubscriptionMinAggregateInputType = {
    id?: true
    userId?: true
    stripeCustomerId?: true
    stripeSubscriptionId?: true
    stripePriceId?: true
    tier?: true
    status?: true
    tribunalAccess?: true
    musicalDnaUnlocked?: true
    tapestryAdvanced?: true
    keithDirectAccess?: true
    currentPeriodStart?: true
    currentPeriodEnd?: true
    cancelAtPeriodEnd?: true
    createdAt?: true
    updatedAt?: true
  }

  export type SubscriptionMaxAggregateInputType = {
    id?: true
    userId?: true
    stripeCustomerId?: true
    stripeSubscriptionId?: true
    stripePriceId?: true
    tier?: true
    status?: true
    tribunalAccess?: true
    musicalDnaUnlocked?: true
    tapestryAdvanced?: true
    keithDirectAccess?: true
    currentPeriodStart?: true
    currentPeriodEnd?: true
    cancelAtPeriodEnd?: true
    createdAt?: true
    updatedAt?: true
  }

  export type SubscriptionCountAggregateInputType = {
    id?: true
    userId?: true
    stripeCustomerId?: true
    stripeSubscriptionId?: true
    stripePriceId?: true
    tier?: true
    status?: true
    tribunalAccess?: true
    musicalDnaUnlocked?: true
    tapestryAdvanced?: true
    keithDirectAccess?: true
    currentPeriodStart?: true
    currentPeriodEnd?: true
    cancelAtPeriodEnd?: true
    createdAt?: true
    updatedAt?: true
    _all?: true
  }

  export type SubscriptionAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which Subscription to aggregate.
     */
    where?: SubscriptionWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Subscriptions to fetch.
     */
    orderBy?: SubscriptionOrderByWithRelationInput | SubscriptionOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: SubscriptionWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Subscriptions from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Subscriptions.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned Subscriptions
    **/
    _count?: true | SubscriptionCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: SubscriptionMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: SubscriptionMaxAggregateInputType
  }

  export type GetSubscriptionAggregateType<T extends SubscriptionAggregateArgs> = {
        [P in keyof T & keyof AggregateSubscription]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateSubscription[P]>
      : GetScalarType<T[P], AggregateSubscription[P]>
  }




  export type SubscriptionGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: SubscriptionWhereInput
    orderBy?: SubscriptionOrderByWithAggregationInput | SubscriptionOrderByWithAggregationInput[]
    by: SubscriptionScalarFieldEnum[] | SubscriptionScalarFieldEnum
    having?: SubscriptionScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: SubscriptionCountAggregateInputType | true
    _min?: SubscriptionMinAggregateInputType
    _max?: SubscriptionMaxAggregateInputType
  }

  export type SubscriptionGroupByOutputType = {
    id: string
    userId: string
    stripeCustomerId: string
    stripeSubscriptionId: string | null
    stripePriceId: string | null
    tier: string
    status: string
    tribunalAccess: boolean
    musicalDnaUnlocked: boolean
    tapestryAdvanced: boolean
    keithDirectAccess: boolean
    currentPeriodStart: Date | null
    currentPeriodEnd: Date | null
    cancelAtPeriodEnd: boolean
    createdAt: Date
    updatedAt: Date
    _count: SubscriptionCountAggregateOutputType | null
    _min: SubscriptionMinAggregateOutputType | null
    _max: SubscriptionMaxAggregateOutputType | null
  }

  type GetSubscriptionGroupByPayload<T extends SubscriptionGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<SubscriptionGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof SubscriptionGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], SubscriptionGroupByOutputType[P]>
            : GetScalarType<T[P], SubscriptionGroupByOutputType[P]>
        }
      >
    >


  export type SubscriptionSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    stripeCustomerId?: boolean
    stripeSubscriptionId?: boolean
    stripePriceId?: boolean
    tier?: boolean
    status?: boolean
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: boolean
    currentPeriodEnd?: boolean
    cancelAtPeriodEnd?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["subscription"]>

  export type SubscriptionSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    stripeCustomerId?: boolean
    stripeSubscriptionId?: boolean
    stripePriceId?: boolean
    tier?: boolean
    status?: boolean
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: boolean
    currentPeriodEnd?: boolean
    cancelAtPeriodEnd?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["subscription"]>

  export type SubscriptionSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    userId?: boolean
    stripeCustomerId?: boolean
    stripeSubscriptionId?: boolean
    stripePriceId?: boolean
    tier?: boolean
    status?: boolean
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: boolean
    currentPeriodEnd?: boolean
    cancelAtPeriodEnd?: boolean
    createdAt?: boolean
    updatedAt?: boolean
    user?: boolean | UserDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["subscription"]>

  export type SubscriptionSelectScalar = {
    id?: boolean
    userId?: boolean
    stripeCustomerId?: boolean
    stripeSubscriptionId?: boolean
    stripePriceId?: boolean
    tier?: boolean
    status?: boolean
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: boolean
    currentPeriodEnd?: boolean
    cancelAtPeriodEnd?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }

  export type SubscriptionOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "userId" | "stripeCustomerId" | "stripeSubscriptionId" | "stripePriceId" | "tier" | "status" | "tribunalAccess" | "musicalDnaUnlocked" | "tapestryAdvanced" | "keithDirectAccess" | "currentPeriodStart" | "currentPeriodEnd" | "cancelAtPeriodEnd" | "createdAt" | "updatedAt", ExtArgs["result"]["subscription"]>
  export type SubscriptionInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type SubscriptionIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }
  export type SubscriptionIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    user?: boolean | UserDefaultArgs<ExtArgs>
  }

  export type $SubscriptionPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "Subscription"
    objects: {
      user: Prisma.$UserPayload<ExtArgs>
    }
    scalars: $Extensions.GetPayloadResult<{
      id: string
      userId: string
      stripeCustomerId: string
      stripeSubscriptionId: string | null
      stripePriceId: string | null
      tier: string
      status: string
      tribunalAccess: boolean
      musicalDnaUnlocked: boolean
      tapestryAdvanced: boolean
      keithDirectAccess: boolean
      currentPeriodStart: Date | null
      currentPeriodEnd: Date | null
      cancelAtPeriodEnd: boolean
      createdAt: Date
      updatedAt: Date
    }, ExtArgs["result"]["subscription"]>
    composites: {}
  }

  type SubscriptionGetPayload<S extends boolean | null | undefined | SubscriptionDefaultArgs> = $Result.GetResult<Prisma.$SubscriptionPayload, S>

  type SubscriptionCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<SubscriptionFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: SubscriptionCountAggregateInputType | true
    }

  export interface SubscriptionDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['Subscription'], meta: { name: 'Subscription' } }
    /**
     * Find zero or one Subscription that matches the filter.
     * @param {SubscriptionFindUniqueArgs} args - Arguments to find a Subscription
     * @example
     * // Get one Subscription
     * const subscription = await prisma.subscription.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends SubscriptionFindUniqueArgs>(args: SelectSubset<T, SubscriptionFindUniqueArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one Subscription that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {SubscriptionFindUniqueOrThrowArgs} args - Arguments to find a Subscription
     * @example
     * // Get one Subscription
     * const subscription = await prisma.subscription.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends SubscriptionFindUniqueOrThrowArgs>(args: SelectSubset<T, SubscriptionFindUniqueOrThrowArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first Subscription that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {SubscriptionFindFirstArgs} args - Arguments to find a Subscription
     * @example
     * // Get one Subscription
     * const subscription = await prisma.subscription.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends SubscriptionFindFirstArgs>(args?: SelectSubset<T, SubscriptionFindFirstArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first Subscription that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {SubscriptionFindFirstOrThrowArgs} args - Arguments to find a Subscription
     * @example
     * // Get one Subscription
     * const subscription = await prisma.subscription.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends SubscriptionFindFirstOrThrowArgs>(args?: SelectSubset<T, SubscriptionFindFirstOrThrowArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more Subscriptions that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {SubscriptionFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all Subscriptions
     * const subscriptions = await prisma.subscription.findMany()
     * 
     * // Get first 10 Subscriptions
     * const subscriptions = await prisma.subscription.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const subscriptionWithIdOnly = await prisma.subscription.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends SubscriptionFindManyArgs>(args?: SelectSubset<T, SubscriptionFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a Subscription.
     * @param {SubscriptionCreateArgs} args - Arguments to create a Subscription.
     * @example
     * // Create one Subscription
     * const Subscription = await prisma.subscription.create({
     *   data: {
     *     // ... data to create a Subscription
     *   }
     * })
     * 
     */
    create<T extends SubscriptionCreateArgs>(args: SelectSubset<T, SubscriptionCreateArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many Subscriptions.
     * @param {SubscriptionCreateManyArgs} args - Arguments to create many Subscriptions.
     * @example
     * // Create many Subscriptions
     * const subscription = await prisma.subscription.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends SubscriptionCreateManyArgs>(args?: SelectSubset<T, SubscriptionCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many Subscriptions and returns the data saved in the database.
     * @param {SubscriptionCreateManyAndReturnArgs} args - Arguments to create many Subscriptions.
     * @example
     * // Create many Subscriptions
     * const subscription = await prisma.subscription.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many Subscriptions and only return the `id`
     * const subscriptionWithIdOnly = await prisma.subscription.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends SubscriptionCreateManyAndReturnArgs>(args?: SelectSubset<T, SubscriptionCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a Subscription.
     * @param {SubscriptionDeleteArgs} args - Arguments to delete one Subscription.
     * @example
     * // Delete one Subscription
     * const Subscription = await prisma.subscription.delete({
     *   where: {
     *     // ... filter to delete one Subscription
     *   }
     * })
     * 
     */
    delete<T extends SubscriptionDeleteArgs>(args: SelectSubset<T, SubscriptionDeleteArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one Subscription.
     * @param {SubscriptionUpdateArgs} args - Arguments to update one Subscription.
     * @example
     * // Update one Subscription
     * const subscription = await prisma.subscription.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends SubscriptionUpdateArgs>(args: SelectSubset<T, SubscriptionUpdateArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more Subscriptions.
     * @param {SubscriptionDeleteManyArgs} args - Arguments to filter Subscriptions to delete.
     * @example
     * // Delete a few Subscriptions
     * const { count } = await prisma.subscription.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends SubscriptionDeleteManyArgs>(args?: SelectSubset<T, SubscriptionDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more Subscriptions.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {SubscriptionUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many Subscriptions
     * const subscription = await prisma.subscription.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends SubscriptionUpdateManyArgs>(args: SelectSubset<T, SubscriptionUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more Subscriptions and returns the data updated in the database.
     * @param {SubscriptionUpdateManyAndReturnArgs} args - Arguments to update many Subscriptions.
     * @example
     * // Update many Subscriptions
     * const subscription = await prisma.subscription.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more Subscriptions and only return the `id`
     * const subscriptionWithIdOnly = await prisma.subscription.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends SubscriptionUpdateManyAndReturnArgs>(args: SelectSubset<T, SubscriptionUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one Subscription.
     * @param {SubscriptionUpsertArgs} args - Arguments to update or create a Subscription.
     * @example
     * // Update or create a Subscription
     * const subscription = await prisma.subscription.upsert({
     *   create: {
     *     // ... data to create a Subscription
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the Subscription we want to update
     *   }
     * })
     */
    upsert<T extends SubscriptionUpsertArgs>(args: SelectSubset<T, SubscriptionUpsertArgs<ExtArgs>>): Prisma__SubscriptionClient<$Result.GetResult<Prisma.$SubscriptionPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of Subscriptions.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {SubscriptionCountArgs} args - Arguments to filter Subscriptions to count.
     * @example
     * // Count the number of Subscriptions
     * const count = await prisma.subscription.count({
     *   where: {
     *     // ... the filter for the Subscriptions we want to count
     *   }
     * })
    **/
    count<T extends SubscriptionCountArgs>(
      args?: Subset<T, SubscriptionCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], SubscriptionCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a Subscription.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {SubscriptionAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends SubscriptionAggregateArgs>(args: Subset<T, SubscriptionAggregateArgs>): Prisma.PrismaPromise<GetSubscriptionAggregateType<T>>

    /**
     * Group by Subscription.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {SubscriptionGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends SubscriptionGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: SubscriptionGroupByArgs['orderBy'] }
        : { orderBy?: SubscriptionGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, SubscriptionGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetSubscriptionGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the Subscription model
   */
  readonly fields: SubscriptionFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for Subscription.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__SubscriptionClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    user<T extends UserDefaultArgs<ExtArgs> = {}>(args?: Subset<T, UserDefaultArgs<ExtArgs>>): Prisma__UserClient<$Result.GetResult<Prisma.$UserPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the Subscription model
   */
  interface SubscriptionFieldRefs {
    readonly id: FieldRef<"Subscription", 'String'>
    readonly userId: FieldRef<"Subscription", 'String'>
    readonly stripeCustomerId: FieldRef<"Subscription", 'String'>
    readonly stripeSubscriptionId: FieldRef<"Subscription", 'String'>
    readonly stripePriceId: FieldRef<"Subscription", 'String'>
    readonly tier: FieldRef<"Subscription", 'String'>
    readonly status: FieldRef<"Subscription", 'String'>
    readonly tribunalAccess: FieldRef<"Subscription", 'Boolean'>
    readonly musicalDnaUnlocked: FieldRef<"Subscription", 'Boolean'>
    readonly tapestryAdvanced: FieldRef<"Subscription", 'Boolean'>
    readonly keithDirectAccess: FieldRef<"Subscription", 'Boolean'>
    readonly currentPeriodStart: FieldRef<"Subscription", 'DateTime'>
    readonly currentPeriodEnd: FieldRef<"Subscription", 'DateTime'>
    readonly cancelAtPeriodEnd: FieldRef<"Subscription", 'Boolean'>
    readonly createdAt: FieldRef<"Subscription", 'DateTime'>
    readonly updatedAt: FieldRef<"Subscription", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * Subscription findUnique
   */
  export type SubscriptionFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * Filter, which Subscription to fetch.
     */
    where: SubscriptionWhereUniqueInput
  }

  /**
   * Subscription findUniqueOrThrow
   */
  export type SubscriptionFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * Filter, which Subscription to fetch.
     */
    where: SubscriptionWhereUniqueInput
  }

  /**
   * Subscription findFirst
   */
  export type SubscriptionFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * Filter, which Subscription to fetch.
     */
    where?: SubscriptionWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Subscriptions to fetch.
     */
    orderBy?: SubscriptionOrderByWithRelationInput | SubscriptionOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for Subscriptions.
     */
    cursor?: SubscriptionWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Subscriptions from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Subscriptions.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of Subscriptions.
     */
    distinct?: SubscriptionScalarFieldEnum | SubscriptionScalarFieldEnum[]
  }

  /**
   * Subscription findFirstOrThrow
   */
  export type SubscriptionFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * Filter, which Subscription to fetch.
     */
    where?: SubscriptionWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Subscriptions to fetch.
     */
    orderBy?: SubscriptionOrderByWithRelationInput | SubscriptionOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for Subscriptions.
     */
    cursor?: SubscriptionWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Subscriptions from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Subscriptions.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of Subscriptions.
     */
    distinct?: SubscriptionScalarFieldEnum | SubscriptionScalarFieldEnum[]
  }

  /**
   * Subscription findMany
   */
  export type SubscriptionFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * Filter, which Subscriptions to fetch.
     */
    where?: SubscriptionWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Subscriptions to fetch.
     */
    orderBy?: SubscriptionOrderByWithRelationInput | SubscriptionOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing Subscriptions.
     */
    cursor?: SubscriptionWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Subscriptions from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Subscriptions.
     */
    skip?: number
    distinct?: SubscriptionScalarFieldEnum | SubscriptionScalarFieldEnum[]
  }

  /**
   * Subscription create
   */
  export type SubscriptionCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * The data needed to create a Subscription.
     */
    data: XOR<SubscriptionCreateInput, SubscriptionUncheckedCreateInput>
  }

  /**
   * Subscription createMany
   */
  export type SubscriptionCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many Subscriptions.
     */
    data: SubscriptionCreateManyInput | SubscriptionCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * Subscription createManyAndReturn
   */
  export type SubscriptionCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * The data used to create many Subscriptions.
     */
    data: SubscriptionCreateManyInput | SubscriptionCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * Subscription update
   */
  export type SubscriptionUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * The data needed to update a Subscription.
     */
    data: XOR<SubscriptionUpdateInput, SubscriptionUncheckedUpdateInput>
    /**
     * Choose, which Subscription to update.
     */
    where: SubscriptionWhereUniqueInput
  }

  /**
   * Subscription updateMany
   */
  export type SubscriptionUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update Subscriptions.
     */
    data: XOR<SubscriptionUpdateManyMutationInput, SubscriptionUncheckedUpdateManyInput>
    /**
     * Filter which Subscriptions to update
     */
    where?: SubscriptionWhereInput
    /**
     * Limit how many Subscriptions to update.
     */
    limit?: number
  }

  /**
   * Subscription updateManyAndReturn
   */
  export type SubscriptionUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * The data used to update Subscriptions.
     */
    data: XOR<SubscriptionUpdateManyMutationInput, SubscriptionUncheckedUpdateManyInput>
    /**
     * Filter which Subscriptions to update
     */
    where?: SubscriptionWhereInput
    /**
     * Limit how many Subscriptions to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * Subscription upsert
   */
  export type SubscriptionUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * The filter to search for the Subscription to update in case it exists.
     */
    where: SubscriptionWhereUniqueInput
    /**
     * In case the Subscription found by the `where` argument doesn't exist, create a new Subscription with this data.
     */
    create: XOR<SubscriptionCreateInput, SubscriptionUncheckedCreateInput>
    /**
     * In case the Subscription was found with the provided `where` argument, update it with this data.
     */
    update: XOR<SubscriptionUpdateInput, SubscriptionUncheckedUpdateInput>
  }

  /**
   * Subscription delete
   */
  export type SubscriptionDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
    /**
     * Filter which Subscription to delete.
     */
    where: SubscriptionWhereUniqueInput
  }

  /**
   * Subscription deleteMany
   */
  export type SubscriptionDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which Subscriptions to delete
     */
    where?: SubscriptionWhereInput
    /**
     * Limit how many Subscriptions to delete.
     */
    limit?: number
  }

  /**
   * Subscription without action
   */
  export type SubscriptionDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Subscription
     */
    select?: SubscriptionSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Subscription
     */
    omit?: SubscriptionOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: SubscriptionInclude<ExtArgs> | null
  }


  /**
   * Model FounderAlgorithmCore
   */

  export type AggregateFounderAlgorithmCore = {
    _count: FounderAlgorithmCoreCountAggregateOutputType | null
    _min: FounderAlgorithmCoreMinAggregateOutputType | null
    _max: FounderAlgorithmCoreMaxAggregateOutputType | null
  }

  export type FounderAlgorithmCoreMinAggregateOutputType = {
    id: string | null
    principleStatement: string | null
    livedExperience: string | null
    adhdAsJazzPrinciple: string | null
    chaosCurrentMechanism: string | null
    scarsToCodeTransform: string | null
    founderIsAlgorithmCore: string | null
    version: string | null
    active: boolean | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type FounderAlgorithmCoreMaxAggregateOutputType = {
    id: string | null
    principleStatement: string | null
    livedExperience: string | null
    adhdAsJazzPrinciple: string | null
    chaosCurrentMechanism: string | null
    scarsToCodeTransform: string | null
    founderIsAlgorithmCore: string | null
    version: string | null
    active: boolean | null
    createdAt: Date | null
    updatedAt: Date | null
  }

  export type FounderAlgorithmCoreCountAggregateOutputType = {
    id: number
    principleStatement: number
    livedExperience: number
    algorithmicEncoding: number
    adhdAsJazzPrinciple: number
    chaosCurrentMechanism: number
    scarsToCodeTransform: number
    founderIsAlgorithmCore: number
    empowermentTriggers: number
    validationMechanisms: number
    consciousnessScaling: number
    plkImplementation: number
    tribunalOrchestration: number
    tapestryWeaving: number
    version: number
    active: number
    createdAt: number
    updatedAt: number
    _all: number
  }


  export type FounderAlgorithmCoreMinAggregateInputType = {
    id?: true
    principleStatement?: true
    livedExperience?: true
    adhdAsJazzPrinciple?: true
    chaosCurrentMechanism?: true
    scarsToCodeTransform?: true
    founderIsAlgorithmCore?: true
    version?: true
    active?: true
    createdAt?: true
    updatedAt?: true
  }

  export type FounderAlgorithmCoreMaxAggregateInputType = {
    id?: true
    principleStatement?: true
    livedExperience?: true
    adhdAsJazzPrinciple?: true
    chaosCurrentMechanism?: true
    scarsToCodeTransform?: true
    founderIsAlgorithmCore?: true
    version?: true
    active?: true
    createdAt?: true
    updatedAt?: true
  }

  export type FounderAlgorithmCoreCountAggregateInputType = {
    id?: true
    principleStatement?: true
    livedExperience?: true
    algorithmicEncoding?: true
    adhdAsJazzPrinciple?: true
    chaosCurrentMechanism?: true
    scarsToCodeTransform?: true
    founderIsAlgorithmCore?: true
    empowermentTriggers?: true
    validationMechanisms?: true
    consciousnessScaling?: true
    plkImplementation?: true
    tribunalOrchestration?: true
    tapestryWeaving?: true
    version?: true
    active?: true
    createdAt?: true
    updatedAt?: true
    _all?: true
  }

  export type FounderAlgorithmCoreAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which FounderAlgorithmCore to aggregate.
     */
    where?: FounderAlgorithmCoreWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of FounderAlgorithmCores to fetch.
     */
    orderBy?: FounderAlgorithmCoreOrderByWithRelationInput | FounderAlgorithmCoreOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: FounderAlgorithmCoreWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` FounderAlgorithmCores from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` FounderAlgorithmCores.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned FounderAlgorithmCores
    **/
    _count?: true | FounderAlgorithmCoreCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: FounderAlgorithmCoreMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: FounderAlgorithmCoreMaxAggregateInputType
  }

  export type GetFounderAlgorithmCoreAggregateType<T extends FounderAlgorithmCoreAggregateArgs> = {
        [P in keyof T & keyof AggregateFounderAlgorithmCore]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateFounderAlgorithmCore[P]>
      : GetScalarType<T[P], AggregateFounderAlgorithmCore[P]>
  }




  export type FounderAlgorithmCoreGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: FounderAlgorithmCoreWhereInput
    orderBy?: FounderAlgorithmCoreOrderByWithAggregationInput | FounderAlgorithmCoreOrderByWithAggregationInput[]
    by: FounderAlgorithmCoreScalarFieldEnum[] | FounderAlgorithmCoreScalarFieldEnum
    having?: FounderAlgorithmCoreScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: FounderAlgorithmCoreCountAggregateInputType | true
    _min?: FounderAlgorithmCoreMinAggregateInputType
    _max?: FounderAlgorithmCoreMaxAggregateInputType
  }

  export type FounderAlgorithmCoreGroupByOutputType = {
    id: string
    principleStatement: string
    livedExperience: string
    algorithmicEncoding: JsonValue
    adhdAsJazzPrinciple: string | null
    chaosCurrentMechanism: string | null
    scarsToCodeTransform: string | null
    founderIsAlgorithmCore: string | null
    empowermentTriggers: JsonValue
    validationMechanisms: JsonValue
    consciousnessScaling: JsonValue
    plkImplementation: JsonValue
    tribunalOrchestration: JsonValue
    tapestryWeaving: JsonValue
    version: string
    active: boolean
    createdAt: Date
    updatedAt: Date
    _count: FounderAlgorithmCoreCountAggregateOutputType | null
    _min: FounderAlgorithmCoreMinAggregateOutputType | null
    _max: FounderAlgorithmCoreMaxAggregateOutputType | null
  }

  type GetFounderAlgorithmCoreGroupByPayload<T extends FounderAlgorithmCoreGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<FounderAlgorithmCoreGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof FounderAlgorithmCoreGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], FounderAlgorithmCoreGroupByOutputType[P]>
            : GetScalarType<T[P], FounderAlgorithmCoreGroupByOutputType[P]>
        }
      >
    >


  export type FounderAlgorithmCoreSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    principleStatement?: boolean
    livedExperience?: boolean
    algorithmicEncoding?: boolean
    adhdAsJazzPrinciple?: boolean
    chaosCurrentMechanism?: boolean
    scarsToCodeTransform?: boolean
    founderIsAlgorithmCore?: boolean
    empowermentTriggers?: boolean
    validationMechanisms?: boolean
    consciousnessScaling?: boolean
    plkImplementation?: boolean
    tribunalOrchestration?: boolean
    tapestryWeaving?: boolean
    version?: boolean
    active?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }, ExtArgs["result"]["founderAlgorithmCore"]>

  export type FounderAlgorithmCoreSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    principleStatement?: boolean
    livedExperience?: boolean
    algorithmicEncoding?: boolean
    adhdAsJazzPrinciple?: boolean
    chaosCurrentMechanism?: boolean
    scarsToCodeTransform?: boolean
    founderIsAlgorithmCore?: boolean
    empowermentTriggers?: boolean
    validationMechanisms?: boolean
    consciousnessScaling?: boolean
    plkImplementation?: boolean
    tribunalOrchestration?: boolean
    tapestryWeaving?: boolean
    version?: boolean
    active?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }, ExtArgs["result"]["founderAlgorithmCore"]>

  export type FounderAlgorithmCoreSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    principleStatement?: boolean
    livedExperience?: boolean
    algorithmicEncoding?: boolean
    adhdAsJazzPrinciple?: boolean
    chaosCurrentMechanism?: boolean
    scarsToCodeTransform?: boolean
    founderIsAlgorithmCore?: boolean
    empowermentTriggers?: boolean
    validationMechanisms?: boolean
    consciousnessScaling?: boolean
    plkImplementation?: boolean
    tribunalOrchestration?: boolean
    tapestryWeaving?: boolean
    version?: boolean
    active?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }, ExtArgs["result"]["founderAlgorithmCore"]>

  export type FounderAlgorithmCoreSelectScalar = {
    id?: boolean
    principleStatement?: boolean
    livedExperience?: boolean
    algorithmicEncoding?: boolean
    adhdAsJazzPrinciple?: boolean
    chaosCurrentMechanism?: boolean
    scarsToCodeTransform?: boolean
    founderIsAlgorithmCore?: boolean
    empowermentTriggers?: boolean
    validationMechanisms?: boolean
    consciousnessScaling?: boolean
    plkImplementation?: boolean
    tribunalOrchestration?: boolean
    tapestryWeaving?: boolean
    version?: boolean
    active?: boolean
    createdAt?: boolean
    updatedAt?: boolean
  }

  export type FounderAlgorithmCoreOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "principleStatement" | "livedExperience" | "algorithmicEncoding" | "adhdAsJazzPrinciple" | "chaosCurrentMechanism" | "scarsToCodeTransform" | "founderIsAlgorithmCore" | "empowermentTriggers" | "validationMechanisms" | "consciousnessScaling" | "plkImplementation" | "tribunalOrchestration" | "tapestryWeaving" | "version" | "active" | "createdAt" | "updatedAt", ExtArgs["result"]["founderAlgorithmCore"]>

  export type $FounderAlgorithmCorePayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "FounderAlgorithmCore"
    objects: {}
    scalars: $Extensions.GetPayloadResult<{
      id: string
      principleStatement: string
      livedExperience: string
      algorithmicEncoding: Prisma.JsonValue
      adhdAsJazzPrinciple: string | null
      chaosCurrentMechanism: string | null
      scarsToCodeTransform: string | null
      founderIsAlgorithmCore: string | null
      empowermentTriggers: Prisma.JsonValue
      validationMechanisms: Prisma.JsonValue
      consciousnessScaling: Prisma.JsonValue
      plkImplementation: Prisma.JsonValue
      tribunalOrchestration: Prisma.JsonValue
      tapestryWeaving: Prisma.JsonValue
      version: string
      active: boolean
      createdAt: Date
      updatedAt: Date
    }, ExtArgs["result"]["founderAlgorithmCore"]>
    composites: {}
  }

  type FounderAlgorithmCoreGetPayload<S extends boolean | null | undefined | FounderAlgorithmCoreDefaultArgs> = $Result.GetResult<Prisma.$FounderAlgorithmCorePayload, S>

  type FounderAlgorithmCoreCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<FounderAlgorithmCoreFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: FounderAlgorithmCoreCountAggregateInputType | true
    }

  export interface FounderAlgorithmCoreDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['FounderAlgorithmCore'], meta: { name: 'FounderAlgorithmCore' } }
    /**
     * Find zero or one FounderAlgorithmCore that matches the filter.
     * @param {FounderAlgorithmCoreFindUniqueArgs} args - Arguments to find a FounderAlgorithmCore
     * @example
     * // Get one FounderAlgorithmCore
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends FounderAlgorithmCoreFindUniqueArgs>(args: SelectSubset<T, FounderAlgorithmCoreFindUniqueArgs<ExtArgs>>): Prisma__FounderAlgorithmCoreClient<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one FounderAlgorithmCore that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {FounderAlgorithmCoreFindUniqueOrThrowArgs} args - Arguments to find a FounderAlgorithmCore
     * @example
     * // Get one FounderAlgorithmCore
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends FounderAlgorithmCoreFindUniqueOrThrowArgs>(args: SelectSubset<T, FounderAlgorithmCoreFindUniqueOrThrowArgs<ExtArgs>>): Prisma__FounderAlgorithmCoreClient<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first FounderAlgorithmCore that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {FounderAlgorithmCoreFindFirstArgs} args - Arguments to find a FounderAlgorithmCore
     * @example
     * // Get one FounderAlgorithmCore
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends FounderAlgorithmCoreFindFirstArgs>(args?: SelectSubset<T, FounderAlgorithmCoreFindFirstArgs<ExtArgs>>): Prisma__FounderAlgorithmCoreClient<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first FounderAlgorithmCore that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {FounderAlgorithmCoreFindFirstOrThrowArgs} args - Arguments to find a FounderAlgorithmCore
     * @example
     * // Get one FounderAlgorithmCore
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends FounderAlgorithmCoreFindFirstOrThrowArgs>(args?: SelectSubset<T, FounderAlgorithmCoreFindFirstOrThrowArgs<ExtArgs>>): Prisma__FounderAlgorithmCoreClient<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more FounderAlgorithmCores that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {FounderAlgorithmCoreFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all FounderAlgorithmCores
     * const founderAlgorithmCores = await prisma.founderAlgorithmCore.findMany()
     * 
     * // Get first 10 FounderAlgorithmCores
     * const founderAlgorithmCores = await prisma.founderAlgorithmCore.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const founderAlgorithmCoreWithIdOnly = await prisma.founderAlgorithmCore.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends FounderAlgorithmCoreFindManyArgs>(args?: SelectSubset<T, FounderAlgorithmCoreFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a FounderAlgorithmCore.
     * @param {FounderAlgorithmCoreCreateArgs} args - Arguments to create a FounderAlgorithmCore.
     * @example
     * // Create one FounderAlgorithmCore
     * const FounderAlgorithmCore = await prisma.founderAlgorithmCore.create({
     *   data: {
     *     // ... data to create a FounderAlgorithmCore
     *   }
     * })
     * 
     */
    create<T extends FounderAlgorithmCoreCreateArgs>(args: SelectSubset<T, FounderAlgorithmCoreCreateArgs<ExtArgs>>): Prisma__FounderAlgorithmCoreClient<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many FounderAlgorithmCores.
     * @param {FounderAlgorithmCoreCreateManyArgs} args - Arguments to create many FounderAlgorithmCores.
     * @example
     * // Create many FounderAlgorithmCores
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends FounderAlgorithmCoreCreateManyArgs>(args?: SelectSubset<T, FounderAlgorithmCoreCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many FounderAlgorithmCores and returns the data saved in the database.
     * @param {FounderAlgorithmCoreCreateManyAndReturnArgs} args - Arguments to create many FounderAlgorithmCores.
     * @example
     * // Create many FounderAlgorithmCores
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many FounderAlgorithmCores and only return the `id`
     * const founderAlgorithmCoreWithIdOnly = await prisma.founderAlgorithmCore.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends FounderAlgorithmCoreCreateManyAndReturnArgs>(args?: SelectSubset<T, FounderAlgorithmCoreCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a FounderAlgorithmCore.
     * @param {FounderAlgorithmCoreDeleteArgs} args - Arguments to delete one FounderAlgorithmCore.
     * @example
     * // Delete one FounderAlgorithmCore
     * const FounderAlgorithmCore = await prisma.founderAlgorithmCore.delete({
     *   where: {
     *     // ... filter to delete one FounderAlgorithmCore
     *   }
     * })
     * 
     */
    delete<T extends FounderAlgorithmCoreDeleteArgs>(args: SelectSubset<T, FounderAlgorithmCoreDeleteArgs<ExtArgs>>): Prisma__FounderAlgorithmCoreClient<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one FounderAlgorithmCore.
     * @param {FounderAlgorithmCoreUpdateArgs} args - Arguments to update one FounderAlgorithmCore.
     * @example
     * // Update one FounderAlgorithmCore
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends FounderAlgorithmCoreUpdateArgs>(args: SelectSubset<T, FounderAlgorithmCoreUpdateArgs<ExtArgs>>): Prisma__FounderAlgorithmCoreClient<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more FounderAlgorithmCores.
     * @param {FounderAlgorithmCoreDeleteManyArgs} args - Arguments to filter FounderAlgorithmCores to delete.
     * @example
     * // Delete a few FounderAlgorithmCores
     * const { count } = await prisma.founderAlgorithmCore.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends FounderAlgorithmCoreDeleteManyArgs>(args?: SelectSubset<T, FounderAlgorithmCoreDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more FounderAlgorithmCores.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {FounderAlgorithmCoreUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many FounderAlgorithmCores
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends FounderAlgorithmCoreUpdateManyArgs>(args: SelectSubset<T, FounderAlgorithmCoreUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more FounderAlgorithmCores and returns the data updated in the database.
     * @param {FounderAlgorithmCoreUpdateManyAndReturnArgs} args - Arguments to update many FounderAlgorithmCores.
     * @example
     * // Update many FounderAlgorithmCores
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more FounderAlgorithmCores and only return the `id`
     * const founderAlgorithmCoreWithIdOnly = await prisma.founderAlgorithmCore.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends FounderAlgorithmCoreUpdateManyAndReturnArgs>(args: SelectSubset<T, FounderAlgorithmCoreUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one FounderAlgorithmCore.
     * @param {FounderAlgorithmCoreUpsertArgs} args - Arguments to update or create a FounderAlgorithmCore.
     * @example
     * // Update or create a FounderAlgorithmCore
     * const founderAlgorithmCore = await prisma.founderAlgorithmCore.upsert({
     *   create: {
     *     // ... data to create a FounderAlgorithmCore
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the FounderAlgorithmCore we want to update
     *   }
     * })
     */
    upsert<T extends FounderAlgorithmCoreUpsertArgs>(args: SelectSubset<T, FounderAlgorithmCoreUpsertArgs<ExtArgs>>): Prisma__FounderAlgorithmCoreClient<$Result.GetResult<Prisma.$FounderAlgorithmCorePayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of FounderAlgorithmCores.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {FounderAlgorithmCoreCountArgs} args - Arguments to filter FounderAlgorithmCores to count.
     * @example
     * // Count the number of FounderAlgorithmCores
     * const count = await prisma.founderAlgorithmCore.count({
     *   where: {
     *     // ... the filter for the FounderAlgorithmCores we want to count
     *   }
     * })
    **/
    count<T extends FounderAlgorithmCoreCountArgs>(
      args?: Subset<T, FounderAlgorithmCoreCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], FounderAlgorithmCoreCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a FounderAlgorithmCore.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {FounderAlgorithmCoreAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends FounderAlgorithmCoreAggregateArgs>(args: Subset<T, FounderAlgorithmCoreAggregateArgs>): Prisma.PrismaPromise<GetFounderAlgorithmCoreAggregateType<T>>

    /**
     * Group by FounderAlgorithmCore.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {FounderAlgorithmCoreGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends FounderAlgorithmCoreGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: FounderAlgorithmCoreGroupByArgs['orderBy'] }
        : { orderBy?: FounderAlgorithmCoreGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, FounderAlgorithmCoreGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetFounderAlgorithmCoreGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the FounderAlgorithmCore model
   */
  readonly fields: FounderAlgorithmCoreFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for FounderAlgorithmCore.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__FounderAlgorithmCoreClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the FounderAlgorithmCore model
   */
  interface FounderAlgorithmCoreFieldRefs {
    readonly id: FieldRef<"FounderAlgorithmCore", 'String'>
    readonly principleStatement: FieldRef<"FounderAlgorithmCore", 'String'>
    readonly livedExperience: FieldRef<"FounderAlgorithmCore", 'String'>
    readonly algorithmicEncoding: FieldRef<"FounderAlgorithmCore", 'Json'>
    readonly adhdAsJazzPrinciple: FieldRef<"FounderAlgorithmCore", 'String'>
    readonly chaosCurrentMechanism: FieldRef<"FounderAlgorithmCore", 'String'>
    readonly scarsToCodeTransform: FieldRef<"FounderAlgorithmCore", 'String'>
    readonly founderIsAlgorithmCore: FieldRef<"FounderAlgorithmCore", 'String'>
    readonly empowermentTriggers: FieldRef<"FounderAlgorithmCore", 'Json'>
    readonly validationMechanisms: FieldRef<"FounderAlgorithmCore", 'Json'>
    readonly consciousnessScaling: FieldRef<"FounderAlgorithmCore", 'Json'>
    readonly plkImplementation: FieldRef<"FounderAlgorithmCore", 'Json'>
    readonly tribunalOrchestration: FieldRef<"FounderAlgorithmCore", 'Json'>
    readonly tapestryWeaving: FieldRef<"FounderAlgorithmCore", 'Json'>
    readonly version: FieldRef<"FounderAlgorithmCore", 'String'>
    readonly active: FieldRef<"FounderAlgorithmCore", 'Boolean'>
    readonly createdAt: FieldRef<"FounderAlgorithmCore", 'DateTime'>
    readonly updatedAt: FieldRef<"FounderAlgorithmCore", 'DateTime'>
  }
    

  // Custom InputTypes
  /**
   * FounderAlgorithmCore findUnique
   */
  export type FounderAlgorithmCoreFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * Filter, which FounderAlgorithmCore to fetch.
     */
    where: FounderAlgorithmCoreWhereUniqueInput
  }

  /**
   * FounderAlgorithmCore findUniqueOrThrow
   */
  export type FounderAlgorithmCoreFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * Filter, which FounderAlgorithmCore to fetch.
     */
    where: FounderAlgorithmCoreWhereUniqueInput
  }

  /**
   * FounderAlgorithmCore findFirst
   */
  export type FounderAlgorithmCoreFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * Filter, which FounderAlgorithmCore to fetch.
     */
    where?: FounderAlgorithmCoreWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of FounderAlgorithmCores to fetch.
     */
    orderBy?: FounderAlgorithmCoreOrderByWithRelationInput | FounderAlgorithmCoreOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for FounderAlgorithmCores.
     */
    cursor?: FounderAlgorithmCoreWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` FounderAlgorithmCores from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` FounderAlgorithmCores.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of FounderAlgorithmCores.
     */
    distinct?: FounderAlgorithmCoreScalarFieldEnum | FounderAlgorithmCoreScalarFieldEnum[]
  }

  /**
   * FounderAlgorithmCore findFirstOrThrow
   */
  export type FounderAlgorithmCoreFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * Filter, which FounderAlgorithmCore to fetch.
     */
    where?: FounderAlgorithmCoreWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of FounderAlgorithmCores to fetch.
     */
    orderBy?: FounderAlgorithmCoreOrderByWithRelationInput | FounderAlgorithmCoreOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for FounderAlgorithmCores.
     */
    cursor?: FounderAlgorithmCoreWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` FounderAlgorithmCores from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` FounderAlgorithmCores.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of FounderAlgorithmCores.
     */
    distinct?: FounderAlgorithmCoreScalarFieldEnum | FounderAlgorithmCoreScalarFieldEnum[]
  }

  /**
   * FounderAlgorithmCore findMany
   */
  export type FounderAlgorithmCoreFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * Filter, which FounderAlgorithmCores to fetch.
     */
    where?: FounderAlgorithmCoreWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of FounderAlgorithmCores to fetch.
     */
    orderBy?: FounderAlgorithmCoreOrderByWithRelationInput | FounderAlgorithmCoreOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing FounderAlgorithmCores.
     */
    cursor?: FounderAlgorithmCoreWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` FounderAlgorithmCores from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` FounderAlgorithmCores.
     */
    skip?: number
    distinct?: FounderAlgorithmCoreScalarFieldEnum | FounderAlgorithmCoreScalarFieldEnum[]
  }

  /**
   * FounderAlgorithmCore create
   */
  export type FounderAlgorithmCoreCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * The data needed to create a FounderAlgorithmCore.
     */
    data: XOR<FounderAlgorithmCoreCreateInput, FounderAlgorithmCoreUncheckedCreateInput>
  }

  /**
   * FounderAlgorithmCore createMany
   */
  export type FounderAlgorithmCoreCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many FounderAlgorithmCores.
     */
    data: FounderAlgorithmCoreCreateManyInput | FounderAlgorithmCoreCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * FounderAlgorithmCore createManyAndReturn
   */
  export type FounderAlgorithmCoreCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * The data used to create many FounderAlgorithmCores.
     */
    data: FounderAlgorithmCoreCreateManyInput | FounderAlgorithmCoreCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * FounderAlgorithmCore update
   */
  export type FounderAlgorithmCoreUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * The data needed to update a FounderAlgorithmCore.
     */
    data: XOR<FounderAlgorithmCoreUpdateInput, FounderAlgorithmCoreUncheckedUpdateInput>
    /**
     * Choose, which FounderAlgorithmCore to update.
     */
    where: FounderAlgorithmCoreWhereUniqueInput
  }

  /**
   * FounderAlgorithmCore updateMany
   */
  export type FounderAlgorithmCoreUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update FounderAlgorithmCores.
     */
    data: XOR<FounderAlgorithmCoreUpdateManyMutationInput, FounderAlgorithmCoreUncheckedUpdateManyInput>
    /**
     * Filter which FounderAlgorithmCores to update
     */
    where?: FounderAlgorithmCoreWhereInput
    /**
     * Limit how many FounderAlgorithmCores to update.
     */
    limit?: number
  }

  /**
   * FounderAlgorithmCore updateManyAndReturn
   */
  export type FounderAlgorithmCoreUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * The data used to update FounderAlgorithmCores.
     */
    data: XOR<FounderAlgorithmCoreUpdateManyMutationInput, FounderAlgorithmCoreUncheckedUpdateManyInput>
    /**
     * Filter which FounderAlgorithmCores to update
     */
    where?: FounderAlgorithmCoreWhereInput
    /**
     * Limit how many FounderAlgorithmCores to update.
     */
    limit?: number
  }

  /**
   * FounderAlgorithmCore upsert
   */
  export type FounderAlgorithmCoreUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * The filter to search for the FounderAlgorithmCore to update in case it exists.
     */
    where: FounderAlgorithmCoreWhereUniqueInput
    /**
     * In case the FounderAlgorithmCore found by the `where` argument doesn't exist, create a new FounderAlgorithmCore with this data.
     */
    create: XOR<FounderAlgorithmCoreCreateInput, FounderAlgorithmCoreUncheckedCreateInput>
    /**
     * In case the FounderAlgorithmCore was found with the provided `where` argument, update it with this data.
     */
    update: XOR<FounderAlgorithmCoreUpdateInput, FounderAlgorithmCoreUncheckedUpdateInput>
  }

  /**
   * FounderAlgorithmCore delete
   */
  export type FounderAlgorithmCoreDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
    /**
     * Filter which FounderAlgorithmCore to delete.
     */
    where: FounderAlgorithmCoreWhereUniqueInput
  }

  /**
   * FounderAlgorithmCore deleteMany
   */
  export type FounderAlgorithmCoreDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which FounderAlgorithmCores to delete
     */
    where?: FounderAlgorithmCoreWhereInput
    /**
     * Limit how many FounderAlgorithmCores to delete.
     */
    limit?: number
  }

  /**
   * FounderAlgorithmCore without action
   */
  export type FounderAlgorithmCoreDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the FounderAlgorithmCore
     */
    select?: FounderAlgorithmCoreSelect<ExtArgs> | null
    /**
     * Omit specific fields from the FounderAlgorithmCore
     */
    omit?: FounderAlgorithmCoreOmit<ExtArgs> | null
  }


  /**
   * Enums
   */

  export const TransactionIsolationLevel: {
    ReadUncommitted: 'ReadUncommitted',
    ReadCommitted: 'ReadCommitted',
    RepeatableRead: 'RepeatableRead',
    Serializable: 'Serializable'
  };

  export type TransactionIsolationLevel = (typeof TransactionIsolationLevel)[keyof typeof TransactionIsolationLevel]


  export const UserScalarFieldEnum: {
    id: 'id',
    clerkId: 'clerkId',
    email: 'email',
    username: 'username',
    createdAt: 'createdAt',
    updatedAt: 'updatedAt'
  };

  export type UserScalarFieldEnum = (typeof UserScalarFieldEnum)[keyof typeof UserScalarFieldEnum]


  export const ConsciousnessProfileScalarFieldEnum: {
    id: 'id',
    userId: 'userId',
    plkVersion: 'plkVersion',
    plkMetaphorPatterns: 'plkMetaphorPatterns',
    plkCommunicationStyle: 'plkCommunicationStyle',
    plkResonanceScore: 'plkResonanceScore',
    plkProcessingStyle: 'plkProcessingStyle',
    adhdIndicators: 'adhdIndicators',
    autismIndicators: 'autismIndicators',
    cognitiveStrengths: 'cognitiveStrengths',
    processingPreferences: 'processingPreferences',
    attentionPatterns: 'attentionPatterns',
    hyperfocusAreas: 'hyperfocusAreas',
    executiveFunctionMap: 'executiveFunctionMap',
    empowermentLevel: 'empowermentLevel',
    consciousnessCoherence: 'consciousnessCoherence',
    authenticityScore: 'authenticityScore',
    growthTrajectory: 'growthTrajectory',
    consciousnessGrade: 'consciousnessGrade',
    foundationalTruth: 'foundationalTruth',
    coreWisdom: 'coreWisdom',
    revolutionaryPotential: 'revolutionaryPotential',
    chaosCurrentIdentified: 'chaosCurrentIdentified',
    jazzFrequency: 'jazzFrequency',
    createdAt: 'createdAt',
    updatedAt: 'updatedAt'
  };

  export type ConsciousnessProfileScalarFieldEnum = (typeof ConsciousnessProfileScalarFieldEnum)[keyof typeof ConsciousnessProfileScalarFieldEnum]


  export const BucketDropScalarFieldEnum: {
    id: 'id',
    userId: 'userId',
    content: 'content',
    contentType: 'contentType',
    emotionalIntensity: 'emotionalIntensity',
    urgencyLevel: 'urgencyLevel',
    cognitiveLoad: 'cognitiveLoad',
    adhdContext: 'adhdContext',
    hyperfocusIndicator: 'hyperfocusIndicator',
    executiveFunctionTag: 'executiveFunctionTag',
    plkResonance: 'plkResonance',
    metaphorExtracted: 'metaphorExtracted',
    linguisticPattern: 'linguisticPattern',
    status: 'status',
    tapestryIntegrated: 'tapestryIntegrated',
    tribunalReviewed: 'tribunalReviewed',
    capturedAt: 'capturedAt',
    updatedAt: 'updatedAt'
  };

  export type BucketDropScalarFieldEnum = (typeof BucketDropScalarFieldEnum)[keyof typeof BucketDropScalarFieldEnum]


  export const TapestryNodeScalarFieldEnum: {
    id: 'id',
    userId: 'userId',
    xCoordinate: 'xCoordinate',
    yCoordinate: 'yCoordinate',
    zCoordinate: 'zCoordinate',
    nodeSize: 'nodeSize',
    nodeColor: 'nodeColor',
    thoughtContent: 'thoughtContent',
    emotionalResonance: 'emotionalResonance',
    consciousnessDepth: 'consciousnessDepth',
    growthSignificance: 'growthSignificance',
    connectedNodes: 'connectedNodes',
    connectionStrengths: 'connectionStrengths',
    networkCentrality: 'networkCentrality',
    aiInterpretation: 'aiInterpretation',
    patternCategory: 'patternCategory',
    empowermentPotential: 'empowermentPotential',
    bucketDropId: 'bucketDropId',
    createdAt: 'createdAt',
    updatedAt: 'updatedAt'
  };

  export type TapestryNodeScalarFieldEnum = (typeof TapestryNodeScalarFieldEnum)[keyof typeof TapestryNodeScalarFieldEnum]


  export const TribunalSessionScalarFieldEnum: {
    id: 'id',
    userId: 'userId',
    queryText: 'queryText',
    sessionType: 'sessionType',
    openaiResponse: 'openaiResponse',
    anthropicResponse: 'anthropicResponse',
    perplexityResponse: 'perplexityResponse',
    geminiResponse: 'geminiResponse',
    consensusScore: 'consensusScore',
    empowermentConsensus: 'empowermentConsensus',
    consciousnessInsights: 'consciousnessInsights',
    keithWisdomTriggered: 'keithWisdomTriggered',
    foundationalTruthHit: 'foundationalTruthHit',
    revolutionaryPotential: 'revolutionaryPotential',
    adhdAdaptations: 'adhdAdaptations',
    processingAccommodations: 'processingAccommodations',
    cognitiveAccessibility: 'cognitiveAccessibility',
    completedAt: 'completedAt',
    duration: 'duration',
    personasUsed: 'personasUsed',
    createdAt: 'createdAt'
  };

  export type TribunalSessionScalarFieldEnum = (typeof TribunalSessionScalarFieldEnum)[keyof typeof TribunalSessionScalarFieldEnum]


  export const MusicalDnaAnalysisScalarFieldEnum: {
    id: 'id',
    userId: 'userId',
    primaryGenres: 'primaryGenres',
    primaryArtists: 'primaryArtists',
    emotionalThemes: 'emotionalThemes',
    acousticPreference: 'acousticPreference',
    introspectionLevel: 'introspectionLevel',
    resilienceMarkers: 'resilienceMarkers',
    connectionLonging: 'connectionLonging',
    catharticProcessing: 'catharticProcessing',
    narrativeArc: 'narrativeArc',
    transformationStage: 'transformationStage',
    musicalMetaphors: 'musicalMetaphors',
    resonancePattern: 'resonancePattern',
    cognitiveMapping: 'cognitiveMapping',
    songsAnalyzed: 'songsAnalyzed',
    confidenceLevel: 'confidenceLevel',
    lastSpotifySync: 'lastSpotifySync',
    createdAt: 'createdAt',
    updatedAt: 'updatedAt'
  };

  export type MusicalDnaAnalysisScalarFieldEnum = (typeof MusicalDnaAnalysisScalarFieldEnum)[keyof typeof MusicalDnaAnalysisScalarFieldEnum]


  export const ConsciousnessMetricScalarFieldEnum: {
    id: 'id',
    userId: 'userId',
    attentionLevel: 'attentionLevel',
    flowStateIndicator: 'flowStateIndicator',
    executiveFunctionLoad: 'executiveFunctionLoad',
    hyperfocusActive: 'hyperfocusActive',
    empowermentMomentum: 'empowermentMomentum',
    authenticityAlignment: 'authenticityAlignment',
    consciousnessClarity: 'consciousnessClarity',
    revolutionaryReadiness: 'revolutionaryReadiness',
    environmentalFactors: 'environmentalFactors',
    socialContext: 'socialContext',
    timeOfDay: 'timeOfDay',
    energyLevel: 'energyLevel',
    supportNeeded: 'supportNeeded',
    interventionType: 'interventionType',
    timestamp: 'timestamp'
  };

  export type ConsciousnessMetricScalarFieldEnum = (typeof ConsciousnessMetricScalarFieldEnum)[keyof typeof ConsciousnessMetricScalarFieldEnum]


  export const EmpowermentEventScalarFieldEnum: {
    id: 'id',
    userId: 'userId',
    eventType: 'eventType',
    description: 'description',
    intensityLevel: 'intensityLevel',
    scarsToCodeMoment: 'scarsToCodeMoment',
    chaosCurrentRealized: 'chaosCurrentRealized',
    jazzFrequencyTuned: 'jazzFrequencyTuned',
    sourceType: 'sourceType',
    bucketDropId: 'bucketDropId',
    consciousnessShift: 'consciousnessShift',
    empowermentIncrease: 'empowermentIncrease',
    revolutionaryPotential: 'revolutionaryPotential',
    aiValidated: 'aiValidated',
    userConfirmed: 'userConfirmed',
    createdAt: 'createdAt'
  };

  export type EmpowermentEventScalarFieldEnum = (typeof EmpowermentEventScalarFieldEnum)[keyof typeof EmpowermentEventScalarFieldEnum]


  export const SubscriptionScalarFieldEnum: {
    id: 'id',
    userId: 'userId',
    stripeCustomerId: 'stripeCustomerId',
    stripeSubscriptionId: 'stripeSubscriptionId',
    stripePriceId: 'stripePriceId',
    tier: 'tier',
    status: 'status',
    tribunalAccess: 'tribunalAccess',
    musicalDnaUnlocked: 'musicalDnaUnlocked',
    tapestryAdvanced: 'tapestryAdvanced',
    keithDirectAccess: 'keithDirectAccess',
    currentPeriodStart: 'currentPeriodStart',
    currentPeriodEnd: 'currentPeriodEnd',
    cancelAtPeriodEnd: 'cancelAtPeriodEnd',
    createdAt: 'createdAt',
    updatedAt: 'updatedAt'
  };

  export type SubscriptionScalarFieldEnum = (typeof SubscriptionScalarFieldEnum)[keyof typeof SubscriptionScalarFieldEnum]


  export const FounderAlgorithmCoreScalarFieldEnum: {
    id: 'id',
    principleStatement: 'principleStatement',
    livedExperience: 'livedExperience',
    algorithmicEncoding: 'algorithmicEncoding',
    adhdAsJazzPrinciple: 'adhdAsJazzPrinciple',
    chaosCurrentMechanism: 'chaosCurrentMechanism',
    scarsToCodeTransform: 'scarsToCodeTransform',
    founderIsAlgorithmCore: 'founderIsAlgorithmCore',
    empowermentTriggers: 'empowermentTriggers',
    validationMechanisms: 'validationMechanisms',
    consciousnessScaling: 'consciousnessScaling',
    plkImplementation: 'plkImplementation',
    tribunalOrchestration: 'tribunalOrchestration',
    tapestryWeaving: 'tapestryWeaving',
    version: 'version',
    active: 'active',
    createdAt: 'createdAt',
    updatedAt: 'updatedAt'
  };

  export type FounderAlgorithmCoreScalarFieldEnum = (typeof FounderAlgorithmCoreScalarFieldEnum)[keyof typeof FounderAlgorithmCoreScalarFieldEnum]


  export const SortOrder: {
    asc: 'asc',
    desc: 'desc'
  };

  export type SortOrder = (typeof SortOrder)[keyof typeof SortOrder]


  export const JsonNullValueInput: {
    JsonNull: typeof JsonNull
  };

  export type JsonNullValueInput = (typeof JsonNullValueInput)[keyof typeof JsonNullValueInput]


  export const QueryMode: {
    default: 'default',
    insensitive: 'insensitive'
  };

  export type QueryMode = (typeof QueryMode)[keyof typeof QueryMode]


  export const NullsOrder: {
    first: 'first',
    last: 'last'
  };

  export type NullsOrder = (typeof NullsOrder)[keyof typeof NullsOrder]


  export const JsonNullValueFilter: {
    DbNull: typeof DbNull,
    JsonNull: typeof JsonNull,
    AnyNull: typeof AnyNull
  };

  export type JsonNullValueFilter = (typeof JsonNullValueFilter)[keyof typeof JsonNullValueFilter]


  /**
   * Field references
   */


  /**
   * Reference to a field of type 'String'
   */
  export type StringFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'String'>
    


  /**
   * Reference to a field of type 'String[]'
   */
  export type ListStringFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'String[]'>
    


  /**
   * Reference to a field of type 'DateTime'
   */
  export type DateTimeFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'DateTime'>
    


  /**
   * Reference to a field of type 'DateTime[]'
   */
  export type ListDateTimeFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'DateTime[]'>
    


  /**
   * Reference to a field of type 'Json'
   */
  export type JsonFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Json'>
    


  /**
   * Reference to a field of type 'QueryMode'
   */
  export type EnumQueryModeFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'QueryMode'>
    


  /**
   * Reference to a field of type 'Float'
   */
  export type FloatFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Float'>
    


  /**
   * Reference to a field of type 'Float[]'
   */
  export type ListFloatFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Float[]'>
    


  /**
   * Reference to a field of type 'Int'
   */
  export type IntFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Int'>
    


  /**
   * Reference to a field of type 'Int[]'
   */
  export type ListIntFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Int[]'>
    


  /**
   * Reference to a field of type 'Boolean'
   */
  export type BooleanFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Boolean'>
    
  /**
   * Deep Input Types
   */


  export type UserWhereInput = {
    AND?: UserWhereInput | UserWhereInput[]
    OR?: UserWhereInput[]
    NOT?: UserWhereInput | UserWhereInput[]
    id?: StringFilter<"User"> | string
    clerkId?: StringFilter<"User"> | string
    email?: StringFilter<"User"> | string
    username?: StringNullableFilter<"User"> | string | null
    createdAt?: DateTimeFilter<"User"> | Date | string
    updatedAt?: DateTimeFilter<"User"> | Date | string
    consciousnessProfile?: XOR<ConsciousnessProfileNullableScalarRelationFilter, ConsciousnessProfileWhereInput> | null
    bucketDrops?: BucketDropListRelationFilter
    tapestryNodes?: TapestryNodeListRelationFilter
    tribunalSessions?: TribunalSessionListRelationFilter
    consciousnessMetrics?: ConsciousnessMetricListRelationFilter
    musicalDnaAnalyses?: MusicalDnaAnalysisListRelationFilter
    empowermentEvents?: EmpowermentEventListRelationFilter
    subscription?: XOR<SubscriptionNullableScalarRelationFilter, SubscriptionWhereInput> | null
  }

  export type UserOrderByWithRelationInput = {
    id?: SortOrder
    clerkId?: SortOrder
    email?: SortOrder
    username?: SortOrderInput | SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    consciousnessProfile?: ConsciousnessProfileOrderByWithRelationInput
    bucketDrops?: BucketDropOrderByRelationAggregateInput
    tapestryNodes?: TapestryNodeOrderByRelationAggregateInput
    tribunalSessions?: TribunalSessionOrderByRelationAggregateInput
    consciousnessMetrics?: ConsciousnessMetricOrderByRelationAggregateInput
    musicalDnaAnalyses?: MusicalDnaAnalysisOrderByRelationAggregateInput
    empowermentEvents?: EmpowermentEventOrderByRelationAggregateInput
    subscription?: SubscriptionOrderByWithRelationInput
  }

  export type UserWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    clerkId?: string
    email?: string
    username?: string
    AND?: UserWhereInput | UserWhereInput[]
    OR?: UserWhereInput[]
    NOT?: UserWhereInput | UserWhereInput[]
    createdAt?: DateTimeFilter<"User"> | Date | string
    updatedAt?: DateTimeFilter<"User"> | Date | string
    consciousnessProfile?: XOR<ConsciousnessProfileNullableScalarRelationFilter, ConsciousnessProfileWhereInput> | null
    bucketDrops?: BucketDropListRelationFilter
    tapestryNodes?: TapestryNodeListRelationFilter
    tribunalSessions?: TribunalSessionListRelationFilter
    consciousnessMetrics?: ConsciousnessMetricListRelationFilter
    musicalDnaAnalyses?: MusicalDnaAnalysisListRelationFilter
    empowermentEvents?: EmpowermentEventListRelationFilter
    subscription?: XOR<SubscriptionNullableScalarRelationFilter, SubscriptionWhereInput> | null
  }, "id" | "clerkId" | "email" | "username">

  export type UserOrderByWithAggregationInput = {
    id?: SortOrder
    clerkId?: SortOrder
    email?: SortOrder
    username?: SortOrderInput | SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    _count?: UserCountOrderByAggregateInput
    _max?: UserMaxOrderByAggregateInput
    _min?: UserMinOrderByAggregateInput
  }

  export type UserScalarWhereWithAggregatesInput = {
    AND?: UserScalarWhereWithAggregatesInput | UserScalarWhereWithAggregatesInput[]
    OR?: UserScalarWhereWithAggregatesInput[]
    NOT?: UserScalarWhereWithAggregatesInput | UserScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"User"> | string
    clerkId?: StringWithAggregatesFilter<"User"> | string
    email?: StringWithAggregatesFilter<"User"> | string
    username?: StringNullableWithAggregatesFilter<"User"> | string | null
    createdAt?: DateTimeWithAggregatesFilter<"User"> | Date | string
    updatedAt?: DateTimeWithAggregatesFilter<"User"> | Date | string
  }

  export type ConsciousnessProfileWhereInput = {
    AND?: ConsciousnessProfileWhereInput | ConsciousnessProfileWhereInput[]
    OR?: ConsciousnessProfileWhereInput[]
    NOT?: ConsciousnessProfileWhereInput | ConsciousnessProfileWhereInput[]
    id?: StringFilter<"ConsciousnessProfile"> | string
    userId?: StringFilter<"ConsciousnessProfile"> | string
    plkVersion?: StringFilter<"ConsciousnessProfile"> | string
    plkMetaphorPatterns?: JsonFilter<"ConsciousnessProfile">
    plkCommunicationStyle?: JsonFilter<"ConsciousnessProfile">
    plkResonanceScore?: FloatFilter<"ConsciousnessProfile"> | number
    plkProcessingStyle?: StringNullableFilter<"ConsciousnessProfile"> | string | null
    adhdIndicators?: JsonFilter<"ConsciousnessProfile">
    autismIndicators?: JsonFilter<"ConsciousnessProfile">
    cognitiveStrengths?: JsonFilter<"ConsciousnessProfile">
    processingPreferences?: JsonFilter<"ConsciousnessProfile">
    attentionPatterns?: JsonFilter<"ConsciousnessProfile">
    hyperfocusAreas?: StringNullableListFilter<"ConsciousnessProfile">
    executiveFunctionMap?: JsonFilter<"ConsciousnessProfile">
    empowermentLevel?: IntFilter<"ConsciousnessProfile"> | number
    consciousnessCoherence?: FloatFilter<"ConsciousnessProfile"> | number
    authenticityScore?: FloatFilter<"ConsciousnessProfile"> | number
    growthTrajectory?: JsonFilter<"ConsciousnessProfile">
    consciousnessGrade?: StringFilter<"ConsciousnessProfile"> | string
    foundationalTruth?: StringNullableFilter<"ConsciousnessProfile"> | string | null
    coreWisdom?: StringNullableFilter<"ConsciousnessProfile"> | string | null
    revolutionaryPotential?: FloatFilter<"ConsciousnessProfile"> | number
    chaosCurrentIdentified?: BoolFilter<"ConsciousnessProfile"> | boolean
    jazzFrequency?: StringNullableFilter<"ConsciousnessProfile"> | string | null
    createdAt?: DateTimeFilter<"ConsciousnessProfile"> | Date | string
    updatedAt?: DateTimeFilter<"ConsciousnessProfile"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }

  export type ConsciousnessProfileOrderByWithRelationInput = {
    id?: SortOrder
    userId?: SortOrder
    plkVersion?: SortOrder
    plkMetaphorPatterns?: SortOrder
    plkCommunicationStyle?: SortOrder
    plkResonanceScore?: SortOrder
    plkProcessingStyle?: SortOrderInput | SortOrder
    adhdIndicators?: SortOrder
    autismIndicators?: SortOrder
    cognitiveStrengths?: SortOrder
    processingPreferences?: SortOrder
    attentionPatterns?: SortOrder
    hyperfocusAreas?: SortOrder
    executiveFunctionMap?: SortOrder
    empowermentLevel?: SortOrder
    consciousnessCoherence?: SortOrder
    authenticityScore?: SortOrder
    growthTrajectory?: SortOrder
    consciousnessGrade?: SortOrder
    foundationalTruth?: SortOrderInput | SortOrder
    coreWisdom?: SortOrderInput | SortOrder
    revolutionaryPotential?: SortOrder
    chaosCurrentIdentified?: SortOrder
    jazzFrequency?: SortOrderInput | SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    user?: UserOrderByWithRelationInput
  }

  export type ConsciousnessProfileWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    userId?: string
    AND?: ConsciousnessProfileWhereInput | ConsciousnessProfileWhereInput[]
    OR?: ConsciousnessProfileWhereInput[]
    NOT?: ConsciousnessProfileWhereInput | ConsciousnessProfileWhereInput[]
    plkVersion?: StringFilter<"ConsciousnessProfile"> | string
    plkMetaphorPatterns?: JsonFilter<"ConsciousnessProfile">
    plkCommunicationStyle?: JsonFilter<"ConsciousnessProfile">
    plkResonanceScore?: FloatFilter<"ConsciousnessProfile"> | number
    plkProcessingStyle?: StringNullableFilter<"ConsciousnessProfile"> | string | null
    adhdIndicators?: JsonFilter<"ConsciousnessProfile">
    autismIndicators?: JsonFilter<"ConsciousnessProfile">
    cognitiveStrengths?: JsonFilter<"ConsciousnessProfile">
    processingPreferences?: JsonFilter<"ConsciousnessProfile">
    attentionPatterns?: JsonFilter<"ConsciousnessProfile">
    hyperfocusAreas?: StringNullableListFilter<"ConsciousnessProfile">
    executiveFunctionMap?: JsonFilter<"ConsciousnessProfile">
    empowermentLevel?: IntFilter<"ConsciousnessProfile"> | number
    consciousnessCoherence?: FloatFilter<"ConsciousnessProfile"> | number
    authenticityScore?: FloatFilter<"ConsciousnessProfile"> | number
    growthTrajectory?: JsonFilter<"ConsciousnessProfile">
    consciousnessGrade?: StringFilter<"ConsciousnessProfile"> | string
    foundationalTruth?: StringNullableFilter<"ConsciousnessProfile"> | string | null
    coreWisdom?: StringNullableFilter<"ConsciousnessProfile"> | string | null
    revolutionaryPotential?: FloatFilter<"ConsciousnessProfile"> | number
    chaosCurrentIdentified?: BoolFilter<"ConsciousnessProfile"> | boolean
    jazzFrequency?: StringNullableFilter<"ConsciousnessProfile"> | string | null
    createdAt?: DateTimeFilter<"ConsciousnessProfile"> | Date | string
    updatedAt?: DateTimeFilter<"ConsciousnessProfile"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }, "id" | "userId">

  export type ConsciousnessProfileOrderByWithAggregationInput = {
    id?: SortOrder
    userId?: SortOrder
    plkVersion?: SortOrder
    plkMetaphorPatterns?: SortOrder
    plkCommunicationStyle?: SortOrder
    plkResonanceScore?: SortOrder
    plkProcessingStyle?: SortOrderInput | SortOrder
    adhdIndicators?: SortOrder
    autismIndicators?: SortOrder
    cognitiveStrengths?: SortOrder
    processingPreferences?: SortOrder
    attentionPatterns?: SortOrder
    hyperfocusAreas?: SortOrder
    executiveFunctionMap?: SortOrder
    empowermentLevel?: SortOrder
    consciousnessCoherence?: SortOrder
    authenticityScore?: SortOrder
    growthTrajectory?: SortOrder
    consciousnessGrade?: SortOrder
    foundationalTruth?: SortOrderInput | SortOrder
    coreWisdom?: SortOrderInput | SortOrder
    revolutionaryPotential?: SortOrder
    chaosCurrentIdentified?: SortOrder
    jazzFrequency?: SortOrderInput | SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    _count?: ConsciousnessProfileCountOrderByAggregateInput
    _avg?: ConsciousnessProfileAvgOrderByAggregateInput
    _max?: ConsciousnessProfileMaxOrderByAggregateInput
    _min?: ConsciousnessProfileMinOrderByAggregateInput
    _sum?: ConsciousnessProfileSumOrderByAggregateInput
  }

  export type ConsciousnessProfileScalarWhereWithAggregatesInput = {
    AND?: ConsciousnessProfileScalarWhereWithAggregatesInput | ConsciousnessProfileScalarWhereWithAggregatesInput[]
    OR?: ConsciousnessProfileScalarWhereWithAggregatesInput[]
    NOT?: ConsciousnessProfileScalarWhereWithAggregatesInput | ConsciousnessProfileScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"ConsciousnessProfile"> | string
    userId?: StringWithAggregatesFilter<"ConsciousnessProfile"> | string
    plkVersion?: StringWithAggregatesFilter<"ConsciousnessProfile"> | string
    plkMetaphorPatterns?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    plkCommunicationStyle?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    plkResonanceScore?: FloatWithAggregatesFilter<"ConsciousnessProfile"> | number
    plkProcessingStyle?: StringNullableWithAggregatesFilter<"ConsciousnessProfile"> | string | null
    adhdIndicators?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    autismIndicators?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    cognitiveStrengths?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    processingPreferences?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    attentionPatterns?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    hyperfocusAreas?: StringNullableListFilter<"ConsciousnessProfile">
    executiveFunctionMap?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    empowermentLevel?: IntWithAggregatesFilter<"ConsciousnessProfile"> | number
    consciousnessCoherence?: FloatWithAggregatesFilter<"ConsciousnessProfile"> | number
    authenticityScore?: FloatWithAggregatesFilter<"ConsciousnessProfile"> | number
    growthTrajectory?: JsonWithAggregatesFilter<"ConsciousnessProfile">
    consciousnessGrade?: StringWithAggregatesFilter<"ConsciousnessProfile"> | string
    foundationalTruth?: StringNullableWithAggregatesFilter<"ConsciousnessProfile"> | string | null
    coreWisdom?: StringNullableWithAggregatesFilter<"ConsciousnessProfile"> | string | null
    revolutionaryPotential?: FloatWithAggregatesFilter<"ConsciousnessProfile"> | number
    chaosCurrentIdentified?: BoolWithAggregatesFilter<"ConsciousnessProfile"> | boolean
    jazzFrequency?: StringNullableWithAggregatesFilter<"ConsciousnessProfile"> | string | null
    createdAt?: DateTimeWithAggregatesFilter<"ConsciousnessProfile"> | Date | string
    updatedAt?: DateTimeWithAggregatesFilter<"ConsciousnessProfile"> | Date | string
  }

  export type BucketDropWhereInput = {
    AND?: BucketDropWhereInput | BucketDropWhereInput[]
    OR?: BucketDropWhereInput[]
    NOT?: BucketDropWhereInput | BucketDropWhereInput[]
    id?: StringFilter<"BucketDrop"> | string
    userId?: StringFilter<"BucketDrop"> | string
    content?: StringFilter<"BucketDrop"> | string
    contentType?: StringFilter<"BucketDrop"> | string
    emotionalIntensity?: FloatFilter<"BucketDrop"> | number
    urgencyLevel?: IntFilter<"BucketDrop"> | number
    cognitiveLoad?: FloatFilter<"BucketDrop"> | number
    adhdContext?: JsonFilter<"BucketDrop">
    hyperfocusIndicator?: BoolFilter<"BucketDrop"> | boolean
    executiveFunctionTag?: StringNullableFilter<"BucketDrop"> | string | null
    plkResonance?: FloatFilter<"BucketDrop"> | number
    metaphorExtracted?: StringNullableFilter<"BucketDrop"> | string | null
    linguisticPattern?: StringNullableFilter<"BucketDrop"> | string | null
    status?: StringFilter<"BucketDrop"> | string
    tapestryIntegrated?: BoolFilter<"BucketDrop"> | boolean
    tribunalReviewed?: BoolFilter<"BucketDrop"> | boolean
    capturedAt?: DateTimeFilter<"BucketDrop"> | Date | string
    updatedAt?: DateTimeFilter<"BucketDrop"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
    tapestryNodes?: TapestryNodeListRelationFilter
    empowermentEvents?: EmpowermentEventListRelationFilter
  }

  export type BucketDropOrderByWithRelationInput = {
    id?: SortOrder
    userId?: SortOrder
    content?: SortOrder
    contentType?: SortOrder
    emotionalIntensity?: SortOrder
    urgencyLevel?: SortOrder
    cognitiveLoad?: SortOrder
    adhdContext?: SortOrder
    hyperfocusIndicator?: SortOrder
    executiveFunctionTag?: SortOrderInput | SortOrder
    plkResonance?: SortOrder
    metaphorExtracted?: SortOrderInput | SortOrder
    linguisticPattern?: SortOrderInput | SortOrder
    status?: SortOrder
    tapestryIntegrated?: SortOrder
    tribunalReviewed?: SortOrder
    capturedAt?: SortOrder
    updatedAt?: SortOrder
    user?: UserOrderByWithRelationInput
    tapestryNodes?: TapestryNodeOrderByRelationAggregateInput
    empowermentEvents?: EmpowermentEventOrderByRelationAggregateInput
  }

  export type BucketDropWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    AND?: BucketDropWhereInput | BucketDropWhereInput[]
    OR?: BucketDropWhereInput[]
    NOT?: BucketDropWhereInput | BucketDropWhereInput[]
    userId?: StringFilter<"BucketDrop"> | string
    content?: StringFilter<"BucketDrop"> | string
    contentType?: StringFilter<"BucketDrop"> | string
    emotionalIntensity?: FloatFilter<"BucketDrop"> | number
    urgencyLevel?: IntFilter<"BucketDrop"> | number
    cognitiveLoad?: FloatFilter<"BucketDrop"> | number
    adhdContext?: JsonFilter<"BucketDrop">
    hyperfocusIndicator?: BoolFilter<"BucketDrop"> | boolean
    executiveFunctionTag?: StringNullableFilter<"BucketDrop"> | string | null
    plkResonance?: FloatFilter<"BucketDrop"> | number
    metaphorExtracted?: StringNullableFilter<"BucketDrop"> | string | null
    linguisticPattern?: StringNullableFilter<"BucketDrop"> | string | null
    status?: StringFilter<"BucketDrop"> | string
    tapestryIntegrated?: BoolFilter<"BucketDrop"> | boolean
    tribunalReviewed?: BoolFilter<"BucketDrop"> | boolean
    capturedAt?: DateTimeFilter<"BucketDrop"> | Date | string
    updatedAt?: DateTimeFilter<"BucketDrop"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
    tapestryNodes?: TapestryNodeListRelationFilter
    empowermentEvents?: EmpowermentEventListRelationFilter
  }, "id">

  export type BucketDropOrderByWithAggregationInput = {
    id?: SortOrder
    userId?: SortOrder
    content?: SortOrder
    contentType?: SortOrder
    emotionalIntensity?: SortOrder
    urgencyLevel?: SortOrder
    cognitiveLoad?: SortOrder
    adhdContext?: SortOrder
    hyperfocusIndicator?: SortOrder
    executiveFunctionTag?: SortOrderInput | SortOrder
    plkResonance?: SortOrder
    metaphorExtracted?: SortOrderInput | SortOrder
    linguisticPattern?: SortOrderInput | SortOrder
    status?: SortOrder
    tapestryIntegrated?: SortOrder
    tribunalReviewed?: SortOrder
    capturedAt?: SortOrder
    updatedAt?: SortOrder
    _count?: BucketDropCountOrderByAggregateInput
    _avg?: BucketDropAvgOrderByAggregateInput
    _max?: BucketDropMaxOrderByAggregateInput
    _min?: BucketDropMinOrderByAggregateInput
    _sum?: BucketDropSumOrderByAggregateInput
  }

  export type BucketDropScalarWhereWithAggregatesInput = {
    AND?: BucketDropScalarWhereWithAggregatesInput | BucketDropScalarWhereWithAggregatesInput[]
    OR?: BucketDropScalarWhereWithAggregatesInput[]
    NOT?: BucketDropScalarWhereWithAggregatesInput | BucketDropScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"BucketDrop"> | string
    userId?: StringWithAggregatesFilter<"BucketDrop"> | string
    content?: StringWithAggregatesFilter<"BucketDrop"> | string
    contentType?: StringWithAggregatesFilter<"BucketDrop"> | string
    emotionalIntensity?: FloatWithAggregatesFilter<"BucketDrop"> | number
    urgencyLevel?: IntWithAggregatesFilter<"BucketDrop"> | number
    cognitiveLoad?: FloatWithAggregatesFilter<"BucketDrop"> | number
    adhdContext?: JsonWithAggregatesFilter<"BucketDrop">
    hyperfocusIndicator?: BoolWithAggregatesFilter<"BucketDrop"> | boolean
    executiveFunctionTag?: StringNullableWithAggregatesFilter<"BucketDrop"> | string | null
    plkResonance?: FloatWithAggregatesFilter<"BucketDrop"> | number
    metaphorExtracted?: StringNullableWithAggregatesFilter<"BucketDrop"> | string | null
    linguisticPattern?: StringNullableWithAggregatesFilter<"BucketDrop"> | string | null
    status?: StringWithAggregatesFilter<"BucketDrop"> | string
    tapestryIntegrated?: BoolWithAggregatesFilter<"BucketDrop"> | boolean
    tribunalReviewed?: BoolWithAggregatesFilter<"BucketDrop"> | boolean
    capturedAt?: DateTimeWithAggregatesFilter<"BucketDrop"> | Date | string
    updatedAt?: DateTimeWithAggregatesFilter<"BucketDrop"> | Date | string
  }

  export type TapestryNodeWhereInput = {
    AND?: TapestryNodeWhereInput | TapestryNodeWhereInput[]
    OR?: TapestryNodeWhereInput[]
    NOT?: TapestryNodeWhereInput | TapestryNodeWhereInput[]
    id?: StringFilter<"TapestryNode"> | string
    userId?: StringFilter<"TapestryNode"> | string
    xCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    yCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    zCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    nodeSize?: IntFilter<"TapestryNode"> | number
    nodeColor?: StringFilter<"TapestryNode"> | string
    thoughtContent?: StringFilter<"TapestryNode"> | string
    emotionalResonance?: FloatFilter<"TapestryNode"> | number
    consciousnessDepth?: IntFilter<"TapestryNode"> | number
    growthSignificance?: FloatFilter<"TapestryNode"> | number
    connectedNodes?: StringNullableListFilter<"TapestryNode">
    connectionStrengths?: FloatNullableListFilter<"TapestryNode">
    networkCentrality?: FloatFilter<"TapestryNode"> | number
    aiInterpretation?: JsonFilter<"TapestryNode">
    patternCategory?: StringNullableFilter<"TapestryNode"> | string | null
    empowermentPotential?: FloatFilter<"TapestryNode"> | number
    bucketDropId?: StringNullableFilter<"TapestryNode"> | string | null
    createdAt?: DateTimeFilter<"TapestryNode"> | Date | string
    updatedAt?: DateTimeFilter<"TapestryNode"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
    bucketDrop?: XOR<BucketDropNullableScalarRelationFilter, BucketDropWhereInput> | null
  }

  export type TapestryNodeOrderByWithRelationInput = {
    id?: SortOrder
    userId?: SortOrder
    xCoordinate?: SortOrderInput | SortOrder
    yCoordinate?: SortOrderInput | SortOrder
    zCoordinate?: SortOrderInput | SortOrder
    nodeSize?: SortOrder
    nodeColor?: SortOrder
    thoughtContent?: SortOrder
    emotionalResonance?: SortOrder
    consciousnessDepth?: SortOrder
    growthSignificance?: SortOrder
    connectedNodes?: SortOrder
    connectionStrengths?: SortOrder
    networkCentrality?: SortOrder
    aiInterpretation?: SortOrder
    patternCategory?: SortOrderInput | SortOrder
    empowermentPotential?: SortOrder
    bucketDropId?: SortOrderInput | SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    user?: UserOrderByWithRelationInput
    bucketDrop?: BucketDropOrderByWithRelationInput
  }

  export type TapestryNodeWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    AND?: TapestryNodeWhereInput | TapestryNodeWhereInput[]
    OR?: TapestryNodeWhereInput[]
    NOT?: TapestryNodeWhereInput | TapestryNodeWhereInput[]
    userId?: StringFilter<"TapestryNode"> | string
    xCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    yCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    zCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    nodeSize?: IntFilter<"TapestryNode"> | number
    nodeColor?: StringFilter<"TapestryNode"> | string
    thoughtContent?: StringFilter<"TapestryNode"> | string
    emotionalResonance?: FloatFilter<"TapestryNode"> | number
    consciousnessDepth?: IntFilter<"TapestryNode"> | number
    growthSignificance?: FloatFilter<"TapestryNode"> | number
    connectedNodes?: StringNullableListFilter<"TapestryNode">
    connectionStrengths?: FloatNullableListFilter<"TapestryNode">
    networkCentrality?: FloatFilter<"TapestryNode"> | number
    aiInterpretation?: JsonFilter<"TapestryNode">
    patternCategory?: StringNullableFilter<"TapestryNode"> | string | null
    empowermentPotential?: FloatFilter<"TapestryNode"> | number
    bucketDropId?: StringNullableFilter<"TapestryNode"> | string | null
    createdAt?: DateTimeFilter<"TapestryNode"> | Date | string
    updatedAt?: DateTimeFilter<"TapestryNode"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
    bucketDrop?: XOR<BucketDropNullableScalarRelationFilter, BucketDropWhereInput> | null
  }, "id">

  export type TapestryNodeOrderByWithAggregationInput = {
    id?: SortOrder
    userId?: SortOrder
    xCoordinate?: SortOrderInput | SortOrder
    yCoordinate?: SortOrderInput | SortOrder
    zCoordinate?: SortOrderInput | SortOrder
    nodeSize?: SortOrder
    nodeColor?: SortOrder
    thoughtContent?: SortOrder
    emotionalResonance?: SortOrder
    consciousnessDepth?: SortOrder
    growthSignificance?: SortOrder
    connectedNodes?: SortOrder
    connectionStrengths?: SortOrder
    networkCentrality?: SortOrder
    aiInterpretation?: SortOrder
    patternCategory?: SortOrderInput | SortOrder
    empowermentPotential?: SortOrder
    bucketDropId?: SortOrderInput | SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    _count?: TapestryNodeCountOrderByAggregateInput
    _avg?: TapestryNodeAvgOrderByAggregateInput
    _max?: TapestryNodeMaxOrderByAggregateInput
    _min?: TapestryNodeMinOrderByAggregateInput
    _sum?: TapestryNodeSumOrderByAggregateInput
  }

  export type TapestryNodeScalarWhereWithAggregatesInput = {
    AND?: TapestryNodeScalarWhereWithAggregatesInput | TapestryNodeScalarWhereWithAggregatesInput[]
    OR?: TapestryNodeScalarWhereWithAggregatesInput[]
    NOT?: TapestryNodeScalarWhereWithAggregatesInput | TapestryNodeScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"TapestryNode"> | string
    userId?: StringWithAggregatesFilter<"TapestryNode"> | string
    xCoordinate?: FloatNullableWithAggregatesFilter<"TapestryNode"> | number | null
    yCoordinate?: FloatNullableWithAggregatesFilter<"TapestryNode"> | number | null
    zCoordinate?: FloatNullableWithAggregatesFilter<"TapestryNode"> | number | null
    nodeSize?: IntWithAggregatesFilter<"TapestryNode"> | number
    nodeColor?: StringWithAggregatesFilter<"TapestryNode"> | string
    thoughtContent?: StringWithAggregatesFilter<"TapestryNode"> | string
    emotionalResonance?: FloatWithAggregatesFilter<"TapestryNode"> | number
    consciousnessDepth?: IntWithAggregatesFilter<"TapestryNode"> | number
    growthSignificance?: FloatWithAggregatesFilter<"TapestryNode"> | number
    connectedNodes?: StringNullableListFilter<"TapestryNode">
    connectionStrengths?: FloatNullableListFilter<"TapestryNode">
    networkCentrality?: FloatWithAggregatesFilter<"TapestryNode"> | number
    aiInterpretation?: JsonWithAggregatesFilter<"TapestryNode">
    patternCategory?: StringNullableWithAggregatesFilter<"TapestryNode"> | string | null
    empowermentPotential?: FloatWithAggregatesFilter<"TapestryNode"> | number
    bucketDropId?: StringNullableWithAggregatesFilter<"TapestryNode"> | string | null
    createdAt?: DateTimeWithAggregatesFilter<"TapestryNode"> | Date | string
    updatedAt?: DateTimeWithAggregatesFilter<"TapestryNode"> | Date | string
  }

  export type TribunalSessionWhereInput = {
    AND?: TribunalSessionWhereInput | TribunalSessionWhereInput[]
    OR?: TribunalSessionWhereInput[]
    NOT?: TribunalSessionWhereInput | TribunalSessionWhereInput[]
    id?: StringFilter<"TribunalSession"> | string
    userId?: StringFilter<"TribunalSession"> | string
    queryText?: StringFilter<"TribunalSession"> | string
    sessionType?: StringFilter<"TribunalSession"> | string
    openaiResponse?: StringNullableFilter<"TribunalSession"> | string | null
    anthropicResponse?: StringNullableFilter<"TribunalSession"> | string | null
    perplexityResponse?: StringNullableFilter<"TribunalSession"> | string | null
    geminiResponse?: StringNullableFilter<"TribunalSession"> | string | null
    consensusScore?: FloatFilter<"TribunalSession"> | number
    empowermentConsensus?: FloatFilter<"TribunalSession"> | number
    consciousnessInsights?: JsonFilter<"TribunalSession">
    keithWisdomTriggered?: BoolFilter<"TribunalSession"> | boolean
    foundationalTruthHit?: BoolFilter<"TribunalSession"> | boolean
    revolutionaryPotential?: FloatFilter<"TribunalSession"> | number
    adhdAdaptations?: JsonFilter<"TribunalSession">
    processingAccommodations?: JsonFilter<"TribunalSession">
    cognitiveAccessibility?: JsonFilter<"TribunalSession">
    completedAt?: DateTimeNullableFilter<"TribunalSession"> | Date | string | null
    duration?: IntNullableFilter<"TribunalSession"> | number | null
    personasUsed?: StringNullableListFilter<"TribunalSession">
    createdAt?: DateTimeFilter<"TribunalSession"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }

  export type TribunalSessionOrderByWithRelationInput = {
    id?: SortOrder
    userId?: SortOrder
    queryText?: SortOrder
    sessionType?: SortOrder
    openaiResponse?: SortOrderInput | SortOrder
    anthropicResponse?: SortOrderInput | SortOrder
    perplexityResponse?: SortOrderInput | SortOrder
    geminiResponse?: SortOrderInput | SortOrder
    consensusScore?: SortOrder
    empowermentConsensus?: SortOrder
    consciousnessInsights?: SortOrder
    keithWisdomTriggered?: SortOrder
    foundationalTruthHit?: SortOrder
    revolutionaryPotential?: SortOrder
    adhdAdaptations?: SortOrder
    processingAccommodations?: SortOrder
    cognitiveAccessibility?: SortOrder
    completedAt?: SortOrderInput | SortOrder
    duration?: SortOrderInput | SortOrder
    personasUsed?: SortOrder
    createdAt?: SortOrder
    user?: UserOrderByWithRelationInput
  }

  export type TribunalSessionWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    AND?: TribunalSessionWhereInput | TribunalSessionWhereInput[]
    OR?: TribunalSessionWhereInput[]
    NOT?: TribunalSessionWhereInput | TribunalSessionWhereInput[]
    userId?: StringFilter<"TribunalSession"> | string
    queryText?: StringFilter<"TribunalSession"> | string
    sessionType?: StringFilter<"TribunalSession"> | string
    openaiResponse?: StringNullableFilter<"TribunalSession"> | string | null
    anthropicResponse?: StringNullableFilter<"TribunalSession"> | string | null
    perplexityResponse?: StringNullableFilter<"TribunalSession"> | string | null
    geminiResponse?: StringNullableFilter<"TribunalSession"> | string | null
    consensusScore?: FloatFilter<"TribunalSession"> | number
    empowermentConsensus?: FloatFilter<"TribunalSession"> | number
    consciousnessInsights?: JsonFilter<"TribunalSession">
    keithWisdomTriggered?: BoolFilter<"TribunalSession"> | boolean
    foundationalTruthHit?: BoolFilter<"TribunalSession"> | boolean
    revolutionaryPotential?: FloatFilter<"TribunalSession"> | number
    adhdAdaptations?: JsonFilter<"TribunalSession">
    processingAccommodations?: JsonFilter<"TribunalSession">
    cognitiveAccessibility?: JsonFilter<"TribunalSession">
    completedAt?: DateTimeNullableFilter<"TribunalSession"> | Date | string | null
    duration?: IntNullableFilter<"TribunalSession"> | number | null
    personasUsed?: StringNullableListFilter<"TribunalSession">
    createdAt?: DateTimeFilter<"TribunalSession"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }, "id">

  export type TribunalSessionOrderByWithAggregationInput = {
    id?: SortOrder
    userId?: SortOrder
    queryText?: SortOrder
    sessionType?: SortOrder
    openaiResponse?: SortOrderInput | SortOrder
    anthropicResponse?: SortOrderInput | SortOrder
    perplexityResponse?: SortOrderInput | SortOrder
    geminiResponse?: SortOrderInput | SortOrder
    consensusScore?: SortOrder
    empowermentConsensus?: SortOrder
    consciousnessInsights?: SortOrder
    keithWisdomTriggered?: SortOrder
    foundationalTruthHit?: SortOrder
    revolutionaryPotential?: SortOrder
    adhdAdaptations?: SortOrder
    processingAccommodations?: SortOrder
    cognitiveAccessibility?: SortOrder
    completedAt?: SortOrderInput | SortOrder
    duration?: SortOrderInput | SortOrder
    personasUsed?: SortOrder
    createdAt?: SortOrder
    _count?: TribunalSessionCountOrderByAggregateInput
    _avg?: TribunalSessionAvgOrderByAggregateInput
    _max?: TribunalSessionMaxOrderByAggregateInput
    _min?: TribunalSessionMinOrderByAggregateInput
    _sum?: TribunalSessionSumOrderByAggregateInput
  }

  export type TribunalSessionScalarWhereWithAggregatesInput = {
    AND?: TribunalSessionScalarWhereWithAggregatesInput | TribunalSessionScalarWhereWithAggregatesInput[]
    OR?: TribunalSessionScalarWhereWithAggregatesInput[]
    NOT?: TribunalSessionScalarWhereWithAggregatesInput | TribunalSessionScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"TribunalSession"> | string
    userId?: StringWithAggregatesFilter<"TribunalSession"> | string
    queryText?: StringWithAggregatesFilter<"TribunalSession"> | string
    sessionType?: StringWithAggregatesFilter<"TribunalSession"> | string
    openaiResponse?: StringNullableWithAggregatesFilter<"TribunalSession"> | string | null
    anthropicResponse?: StringNullableWithAggregatesFilter<"TribunalSession"> | string | null
    perplexityResponse?: StringNullableWithAggregatesFilter<"TribunalSession"> | string | null
    geminiResponse?: StringNullableWithAggregatesFilter<"TribunalSession"> | string | null
    consensusScore?: FloatWithAggregatesFilter<"TribunalSession"> | number
    empowermentConsensus?: FloatWithAggregatesFilter<"TribunalSession"> | number
    consciousnessInsights?: JsonWithAggregatesFilter<"TribunalSession">
    keithWisdomTriggered?: BoolWithAggregatesFilter<"TribunalSession"> | boolean
    foundationalTruthHit?: BoolWithAggregatesFilter<"TribunalSession"> | boolean
    revolutionaryPotential?: FloatWithAggregatesFilter<"TribunalSession"> | number
    adhdAdaptations?: JsonWithAggregatesFilter<"TribunalSession">
    processingAccommodations?: JsonWithAggregatesFilter<"TribunalSession">
    cognitiveAccessibility?: JsonWithAggregatesFilter<"TribunalSession">
    completedAt?: DateTimeNullableWithAggregatesFilter<"TribunalSession"> | Date | string | null
    duration?: IntNullableWithAggregatesFilter<"TribunalSession"> | number | null
    personasUsed?: StringNullableListFilter<"TribunalSession">
    createdAt?: DateTimeWithAggregatesFilter<"TribunalSession"> | Date | string
  }

  export type MusicalDnaAnalysisWhereInput = {
    AND?: MusicalDnaAnalysisWhereInput | MusicalDnaAnalysisWhereInput[]
    OR?: MusicalDnaAnalysisWhereInput[]
    NOT?: MusicalDnaAnalysisWhereInput | MusicalDnaAnalysisWhereInput[]
    id?: StringFilter<"MusicalDnaAnalysis"> | string
    userId?: StringFilter<"MusicalDnaAnalysis"> | string
    primaryGenres?: StringNullableListFilter<"MusicalDnaAnalysis">
    primaryArtists?: StringNullableListFilter<"MusicalDnaAnalysis">
    emotionalThemes?: JsonFilter<"MusicalDnaAnalysis">
    acousticPreference?: FloatFilter<"MusicalDnaAnalysis"> | number
    introspectionLevel?: FloatFilter<"MusicalDnaAnalysis"> | number
    resilienceMarkers?: FloatFilter<"MusicalDnaAnalysis"> | number
    connectionLonging?: FloatFilter<"MusicalDnaAnalysis"> | number
    catharticProcessing?: FloatFilter<"MusicalDnaAnalysis"> | number
    narrativeArc?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    transformationStage?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    musicalMetaphors?: JsonFilter<"MusicalDnaAnalysis">
    resonancePattern?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    cognitiveMapping?: JsonFilter<"MusicalDnaAnalysis">
    songsAnalyzed?: IntFilter<"MusicalDnaAnalysis"> | number
    confidenceLevel?: FloatFilter<"MusicalDnaAnalysis"> | number
    lastSpotifySync?: DateTimeNullableFilter<"MusicalDnaAnalysis"> | Date | string | null
    createdAt?: DateTimeFilter<"MusicalDnaAnalysis"> | Date | string
    updatedAt?: DateTimeFilter<"MusicalDnaAnalysis"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }

  export type MusicalDnaAnalysisOrderByWithRelationInput = {
    id?: SortOrder
    userId?: SortOrder
    primaryGenres?: SortOrder
    primaryArtists?: SortOrder
    emotionalThemes?: SortOrder
    acousticPreference?: SortOrder
    introspectionLevel?: SortOrder
    resilienceMarkers?: SortOrder
    connectionLonging?: SortOrder
    catharticProcessing?: SortOrder
    narrativeArc?: SortOrderInput | SortOrder
    transformationStage?: SortOrderInput | SortOrder
    musicalMetaphors?: SortOrder
    resonancePattern?: SortOrderInput | SortOrder
    cognitiveMapping?: SortOrder
    songsAnalyzed?: SortOrder
    confidenceLevel?: SortOrder
    lastSpotifySync?: SortOrderInput | SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    user?: UserOrderByWithRelationInput
  }

  export type MusicalDnaAnalysisWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    AND?: MusicalDnaAnalysisWhereInput | MusicalDnaAnalysisWhereInput[]
    OR?: MusicalDnaAnalysisWhereInput[]
    NOT?: MusicalDnaAnalysisWhereInput | MusicalDnaAnalysisWhereInput[]
    userId?: StringFilter<"MusicalDnaAnalysis"> | string
    primaryGenres?: StringNullableListFilter<"MusicalDnaAnalysis">
    primaryArtists?: StringNullableListFilter<"MusicalDnaAnalysis">
    emotionalThemes?: JsonFilter<"MusicalDnaAnalysis">
    acousticPreference?: FloatFilter<"MusicalDnaAnalysis"> | number
    introspectionLevel?: FloatFilter<"MusicalDnaAnalysis"> | number
    resilienceMarkers?: FloatFilter<"MusicalDnaAnalysis"> | number
    connectionLonging?: FloatFilter<"MusicalDnaAnalysis"> | number
    catharticProcessing?: FloatFilter<"MusicalDnaAnalysis"> | number
    narrativeArc?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    transformationStage?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    musicalMetaphors?: JsonFilter<"MusicalDnaAnalysis">
    resonancePattern?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    cognitiveMapping?: JsonFilter<"MusicalDnaAnalysis">
    songsAnalyzed?: IntFilter<"MusicalDnaAnalysis"> | number
    confidenceLevel?: FloatFilter<"MusicalDnaAnalysis"> | number
    lastSpotifySync?: DateTimeNullableFilter<"MusicalDnaAnalysis"> | Date | string | null
    createdAt?: DateTimeFilter<"MusicalDnaAnalysis"> | Date | string
    updatedAt?: DateTimeFilter<"MusicalDnaAnalysis"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }, "id">

  export type MusicalDnaAnalysisOrderByWithAggregationInput = {
    id?: SortOrder
    userId?: SortOrder
    primaryGenres?: SortOrder
    primaryArtists?: SortOrder
    emotionalThemes?: SortOrder
    acousticPreference?: SortOrder
    introspectionLevel?: SortOrder
    resilienceMarkers?: SortOrder
    connectionLonging?: SortOrder
    catharticProcessing?: SortOrder
    narrativeArc?: SortOrderInput | SortOrder
    transformationStage?: SortOrderInput | SortOrder
    musicalMetaphors?: SortOrder
    resonancePattern?: SortOrderInput | SortOrder
    cognitiveMapping?: SortOrder
    songsAnalyzed?: SortOrder
    confidenceLevel?: SortOrder
    lastSpotifySync?: SortOrderInput | SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    _count?: MusicalDnaAnalysisCountOrderByAggregateInput
    _avg?: MusicalDnaAnalysisAvgOrderByAggregateInput
    _max?: MusicalDnaAnalysisMaxOrderByAggregateInput
    _min?: MusicalDnaAnalysisMinOrderByAggregateInput
    _sum?: MusicalDnaAnalysisSumOrderByAggregateInput
  }

  export type MusicalDnaAnalysisScalarWhereWithAggregatesInput = {
    AND?: MusicalDnaAnalysisScalarWhereWithAggregatesInput | MusicalDnaAnalysisScalarWhereWithAggregatesInput[]
    OR?: MusicalDnaAnalysisScalarWhereWithAggregatesInput[]
    NOT?: MusicalDnaAnalysisScalarWhereWithAggregatesInput | MusicalDnaAnalysisScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"MusicalDnaAnalysis"> | string
    userId?: StringWithAggregatesFilter<"MusicalDnaAnalysis"> | string
    primaryGenres?: StringNullableListFilter<"MusicalDnaAnalysis">
    primaryArtists?: StringNullableListFilter<"MusicalDnaAnalysis">
    emotionalThemes?: JsonWithAggregatesFilter<"MusicalDnaAnalysis">
    acousticPreference?: FloatWithAggregatesFilter<"MusicalDnaAnalysis"> | number
    introspectionLevel?: FloatWithAggregatesFilter<"MusicalDnaAnalysis"> | number
    resilienceMarkers?: FloatWithAggregatesFilter<"MusicalDnaAnalysis"> | number
    connectionLonging?: FloatWithAggregatesFilter<"MusicalDnaAnalysis"> | number
    catharticProcessing?: FloatWithAggregatesFilter<"MusicalDnaAnalysis"> | number
    narrativeArc?: StringNullableWithAggregatesFilter<"MusicalDnaAnalysis"> | string | null
    transformationStage?: StringNullableWithAggregatesFilter<"MusicalDnaAnalysis"> | string | null
    musicalMetaphors?: JsonWithAggregatesFilter<"MusicalDnaAnalysis">
    resonancePattern?: StringNullableWithAggregatesFilter<"MusicalDnaAnalysis"> | string | null
    cognitiveMapping?: JsonWithAggregatesFilter<"MusicalDnaAnalysis">
    songsAnalyzed?: IntWithAggregatesFilter<"MusicalDnaAnalysis"> | number
    confidenceLevel?: FloatWithAggregatesFilter<"MusicalDnaAnalysis"> | number
    lastSpotifySync?: DateTimeNullableWithAggregatesFilter<"MusicalDnaAnalysis"> | Date | string | null
    createdAt?: DateTimeWithAggregatesFilter<"MusicalDnaAnalysis"> | Date | string
    updatedAt?: DateTimeWithAggregatesFilter<"MusicalDnaAnalysis"> | Date | string
  }

  export type ConsciousnessMetricWhereInput = {
    AND?: ConsciousnessMetricWhereInput | ConsciousnessMetricWhereInput[]
    OR?: ConsciousnessMetricWhereInput[]
    NOT?: ConsciousnessMetricWhereInput | ConsciousnessMetricWhereInput[]
    id?: StringFilter<"ConsciousnessMetric"> | string
    userId?: StringFilter<"ConsciousnessMetric"> | string
    attentionLevel?: IntFilter<"ConsciousnessMetric"> | number
    flowStateIndicator?: FloatFilter<"ConsciousnessMetric"> | number
    executiveFunctionLoad?: FloatFilter<"ConsciousnessMetric"> | number
    hyperfocusActive?: BoolFilter<"ConsciousnessMetric"> | boolean
    empowermentMomentum?: FloatFilter<"ConsciousnessMetric"> | number
    authenticityAlignment?: FloatFilter<"ConsciousnessMetric"> | number
    consciousnessClarity?: FloatFilter<"ConsciousnessMetric"> | number
    revolutionaryReadiness?: FloatFilter<"ConsciousnessMetric"> | number
    environmentalFactors?: JsonFilter<"ConsciousnessMetric">
    socialContext?: JsonFilter<"ConsciousnessMetric">
    timeOfDay?: StringNullableFilter<"ConsciousnessMetric"> | string | null
    energyLevel?: IntFilter<"ConsciousnessMetric"> | number
    supportNeeded?: BoolFilter<"ConsciousnessMetric"> | boolean
    interventionType?: StringNullableFilter<"ConsciousnessMetric"> | string | null
    timestamp?: DateTimeFilter<"ConsciousnessMetric"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }

  export type ConsciousnessMetricOrderByWithRelationInput = {
    id?: SortOrder
    userId?: SortOrder
    attentionLevel?: SortOrder
    flowStateIndicator?: SortOrder
    executiveFunctionLoad?: SortOrder
    hyperfocusActive?: SortOrder
    empowermentMomentum?: SortOrder
    authenticityAlignment?: SortOrder
    consciousnessClarity?: SortOrder
    revolutionaryReadiness?: SortOrder
    environmentalFactors?: SortOrder
    socialContext?: SortOrder
    timeOfDay?: SortOrderInput | SortOrder
    energyLevel?: SortOrder
    supportNeeded?: SortOrder
    interventionType?: SortOrderInput | SortOrder
    timestamp?: SortOrder
    user?: UserOrderByWithRelationInput
  }

  export type ConsciousnessMetricWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    AND?: ConsciousnessMetricWhereInput | ConsciousnessMetricWhereInput[]
    OR?: ConsciousnessMetricWhereInput[]
    NOT?: ConsciousnessMetricWhereInput | ConsciousnessMetricWhereInput[]
    userId?: StringFilter<"ConsciousnessMetric"> | string
    attentionLevel?: IntFilter<"ConsciousnessMetric"> | number
    flowStateIndicator?: FloatFilter<"ConsciousnessMetric"> | number
    executiveFunctionLoad?: FloatFilter<"ConsciousnessMetric"> | number
    hyperfocusActive?: BoolFilter<"ConsciousnessMetric"> | boolean
    empowermentMomentum?: FloatFilter<"ConsciousnessMetric"> | number
    authenticityAlignment?: FloatFilter<"ConsciousnessMetric"> | number
    consciousnessClarity?: FloatFilter<"ConsciousnessMetric"> | number
    revolutionaryReadiness?: FloatFilter<"ConsciousnessMetric"> | number
    environmentalFactors?: JsonFilter<"ConsciousnessMetric">
    socialContext?: JsonFilter<"ConsciousnessMetric">
    timeOfDay?: StringNullableFilter<"ConsciousnessMetric"> | string | null
    energyLevel?: IntFilter<"ConsciousnessMetric"> | number
    supportNeeded?: BoolFilter<"ConsciousnessMetric"> | boolean
    interventionType?: StringNullableFilter<"ConsciousnessMetric"> | string | null
    timestamp?: DateTimeFilter<"ConsciousnessMetric"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }, "id">

  export type ConsciousnessMetricOrderByWithAggregationInput = {
    id?: SortOrder
    userId?: SortOrder
    attentionLevel?: SortOrder
    flowStateIndicator?: SortOrder
    executiveFunctionLoad?: SortOrder
    hyperfocusActive?: SortOrder
    empowermentMomentum?: SortOrder
    authenticityAlignment?: SortOrder
    consciousnessClarity?: SortOrder
    revolutionaryReadiness?: SortOrder
    environmentalFactors?: SortOrder
    socialContext?: SortOrder
    timeOfDay?: SortOrderInput | SortOrder
    energyLevel?: SortOrder
    supportNeeded?: SortOrder
    interventionType?: SortOrderInput | SortOrder
    timestamp?: SortOrder
    _count?: ConsciousnessMetricCountOrderByAggregateInput
    _avg?: ConsciousnessMetricAvgOrderByAggregateInput
    _max?: ConsciousnessMetricMaxOrderByAggregateInput
    _min?: ConsciousnessMetricMinOrderByAggregateInput
    _sum?: ConsciousnessMetricSumOrderByAggregateInput
  }

  export type ConsciousnessMetricScalarWhereWithAggregatesInput = {
    AND?: ConsciousnessMetricScalarWhereWithAggregatesInput | ConsciousnessMetricScalarWhereWithAggregatesInput[]
    OR?: ConsciousnessMetricScalarWhereWithAggregatesInput[]
    NOT?: ConsciousnessMetricScalarWhereWithAggregatesInput | ConsciousnessMetricScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"ConsciousnessMetric"> | string
    userId?: StringWithAggregatesFilter<"ConsciousnessMetric"> | string
    attentionLevel?: IntWithAggregatesFilter<"ConsciousnessMetric"> | number
    flowStateIndicator?: FloatWithAggregatesFilter<"ConsciousnessMetric"> | number
    executiveFunctionLoad?: FloatWithAggregatesFilter<"ConsciousnessMetric"> | number
    hyperfocusActive?: BoolWithAggregatesFilter<"ConsciousnessMetric"> | boolean
    empowermentMomentum?: FloatWithAggregatesFilter<"ConsciousnessMetric"> | number
    authenticityAlignment?: FloatWithAggregatesFilter<"ConsciousnessMetric"> | number
    consciousnessClarity?: FloatWithAggregatesFilter<"ConsciousnessMetric"> | number
    revolutionaryReadiness?: FloatWithAggregatesFilter<"ConsciousnessMetric"> | number
    environmentalFactors?: JsonWithAggregatesFilter<"ConsciousnessMetric">
    socialContext?: JsonWithAggregatesFilter<"ConsciousnessMetric">
    timeOfDay?: StringNullableWithAggregatesFilter<"ConsciousnessMetric"> | string | null
    energyLevel?: IntWithAggregatesFilter<"ConsciousnessMetric"> | number
    supportNeeded?: BoolWithAggregatesFilter<"ConsciousnessMetric"> | boolean
    interventionType?: StringNullableWithAggregatesFilter<"ConsciousnessMetric"> | string | null
    timestamp?: DateTimeWithAggregatesFilter<"ConsciousnessMetric"> | Date | string
  }

  export type EmpowermentEventWhereInput = {
    AND?: EmpowermentEventWhereInput | EmpowermentEventWhereInput[]
    OR?: EmpowermentEventWhereInput[]
    NOT?: EmpowermentEventWhereInput | EmpowermentEventWhereInput[]
    id?: StringFilter<"EmpowermentEvent"> | string
    userId?: StringFilter<"EmpowermentEvent"> | string
    eventType?: StringFilter<"EmpowermentEvent"> | string
    description?: StringFilter<"EmpowermentEvent"> | string
    intensityLevel?: FloatFilter<"EmpowermentEvent"> | number
    scarsToCodeMoment?: BoolFilter<"EmpowermentEvent"> | boolean
    chaosCurrentRealized?: BoolFilter<"EmpowermentEvent"> | boolean
    jazzFrequencyTuned?: BoolFilter<"EmpowermentEvent"> | boolean
    sourceType?: StringNullableFilter<"EmpowermentEvent"> | string | null
    bucketDropId?: StringNullableFilter<"EmpowermentEvent"> | string | null
    consciousnessShift?: FloatFilter<"EmpowermentEvent"> | number
    empowermentIncrease?: FloatFilter<"EmpowermentEvent"> | number
    revolutionaryPotential?: FloatFilter<"EmpowermentEvent"> | number
    aiValidated?: BoolFilter<"EmpowermentEvent"> | boolean
    userConfirmed?: BoolFilter<"EmpowermentEvent"> | boolean
    createdAt?: DateTimeFilter<"EmpowermentEvent"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
    bucketDrop?: XOR<BucketDropNullableScalarRelationFilter, BucketDropWhereInput> | null
  }

  export type EmpowermentEventOrderByWithRelationInput = {
    id?: SortOrder
    userId?: SortOrder
    eventType?: SortOrder
    description?: SortOrder
    intensityLevel?: SortOrder
    scarsToCodeMoment?: SortOrder
    chaosCurrentRealized?: SortOrder
    jazzFrequencyTuned?: SortOrder
    sourceType?: SortOrderInput | SortOrder
    bucketDropId?: SortOrderInput | SortOrder
    consciousnessShift?: SortOrder
    empowermentIncrease?: SortOrder
    revolutionaryPotential?: SortOrder
    aiValidated?: SortOrder
    userConfirmed?: SortOrder
    createdAt?: SortOrder
    user?: UserOrderByWithRelationInput
    bucketDrop?: BucketDropOrderByWithRelationInput
  }

  export type EmpowermentEventWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    AND?: EmpowermentEventWhereInput | EmpowermentEventWhereInput[]
    OR?: EmpowermentEventWhereInput[]
    NOT?: EmpowermentEventWhereInput | EmpowermentEventWhereInput[]
    userId?: StringFilter<"EmpowermentEvent"> | string
    eventType?: StringFilter<"EmpowermentEvent"> | string
    description?: StringFilter<"EmpowermentEvent"> | string
    intensityLevel?: FloatFilter<"EmpowermentEvent"> | number
    scarsToCodeMoment?: BoolFilter<"EmpowermentEvent"> | boolean
    chaosCurrentRealized?: BoolFilter<"EmpowermentEvent"> | boolean
    jazzFrequencyTuned?: BoolFilter<"EmpowermentEvent"> | boolean
    sourceType?: StringNullableFilter<"EmpowermentEvent"> | string | null
    bucketDropId?: StringNullableFilter<"EmpowermentEvent"> | string | null
    consciousnessShift?: FloatFilter<"EmpowermentEvent"> | number
    empowermentIncrease?: FloatFilter<"EmpowermentEvent"> | number
    revolutionaryPotential?: FloatFilter<"EmpowermentEvent"> | number
    aiValidated?: BoolFilter<"EmpowermentEvent"> | boolean
    userConfirmed?: BoolFilter<"EmpowermentEvent"> | boolean
    createdAt?: DateTimeFilter<"EmpowermentEvent"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
    bucketDrop?: XOR<BucketDropNullableScalarRelationFilter, BucketDropWhereInput> | null
  }, "id">

  export type EmpowermentEventOrderByWithAggregationInput = {
    id?: SortOrder
    userId?: SortOrder
    eventType?: SortOrder
    description?: SortOrder
    intensityLevel?: SortOrder
    scarsToCodeMoment?: SortOrder
    chaosCurrentRealized?: SortOrder
    jazzFrequencyTuned?: SortOrder
    sourceType?: SortOrderInput | SortOrder
    bucketDropId?: SortOrderInput | SortOrder
    consciousnessShift?: SortOrder
    empowermentIncrease?: SortOrder
    revolutionaryPotential?: SortOrder
    aiValidated?: SortOrder
    userConfirmed?: SortOrder
    createdAt?: SortOrder
    _count?: EmpowermentEventCountOrderByAggregateInput
    _avg?: EmpowermentEventAvgOrderByAggregateInput
    _max?: EmpowermentEventMaxOrderByAggregateInput
    _min?: EmpowermentEventMinOrderByAggregateInput
    _sum?: EmpowermentEventSumOrderByAggregateInput
  }

  export type EmpowermentEventScalarWhereWithAggregatesInput = {
    AND?: EmpowermentEventScalarWhereWithAggregatesInput | EmpowermentEventScalarWhereWithAggregatesInput[]
    OR?: EmpowermentEventScalarWhereWithAggregatesInput[]
    NOT?: EmpowermentEventScalarWhereWithAggregatesInput | EmpowermentEventScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"EmpowermentEvent"> | string
    userId?: StringWithAggregatesFilter<"EmpowermentEvent"> | string
    eventType?: StringWithAggregatesFilter<"EmpowermentEvent"> | string
    description?: StringWithAggregatesFilter<"EmpowermentEvent"> | string
    intensityLevel?: FloatWithAggregatesFilter<"EmpowermentEvent"> | number
    scarsToCodeMoment?: BoolWithAggregatesFilter<"EmpowermentEvent"> | boolean
    chaosCurrentRealized?: BoolWithAggregatesFilter<"EmpowermentEvent"> | boolean
    jazzFrequencyTuned?: BoolWithAggregatesFilter<"EmpowermentEvent"> | boolean
    sourceType?: StringNullableWithAggregatesFilter<"EmpowermentEvent"> | string | null
    bucketDropId?: StringNullableWithAggregatesFilter<"EmpowermentEvent"> | string | null
    consciousnessShift?: FloatWithAggregatesFilter<"EmpowermentEvent"> | number
    empowermentIncrease?: FloatWithAggregatesFilter<"EmpowermentEvent"> | number
    revolutionaryPotential?: FloatWithAggregatesFilter<"EmpowermentEvent"> | number
    aiValidated?: BoolWithAggregatesFilter<"EmpowermentEvent"> | boolean
    userConfirmed?: BoolWithAggregatesFilter<"EmpowermentEvent"> | boolean
    createdAt?: DateTimeWithAggregatesFilter<"EmpowermentEvent"> | Date | string
  }

  export type SubscriptionWhereInput = {
    AND?: SubscriptionWhereInput | SubscriptionWhereInput[]
    OR?: SubscriptionWhereInput[]
    NOT?: SubscriptionWhereInput | SubscriptionWhereInput[]
    id?: StringFilter<"Subscription"> | string
    userId?: StringFilter<"Subscription"> | string
    stripeCustomerId?: StringFilter<"Subscription"> | string
    stripeSubscriptionId?: StringNullableFilter<"Subscription"> | string | null
    stripePriceId?: StringNullableFilter<"Subscription"> | string | null
    tier?: StringFilter<"Subscription"> | string
    status?: StringFilter<"Subscription"> | string
    tribunalAccess?: BoolFilter<"Subscription"> | boolean
    musicalDnaUnlocked?: BoolFilter<"Subscription"> | boolean
    tapestryAdvanced?: BoolFilter<"Subscription"> | boolean
    keithDirectAccess?: BoolFilter<"Subscription"> | boolean
    currentPeriodStart?: DateTimeNullableFilter<"Subscription"> | Date | string | null
    currentPeriodEnd?: DateTimeNullableFilter<"Subscription"> | Date | string | null
    cancelAtPeriodEnd?: BoolFilter<"Subscription"> | boolean
    createdAt?: DateTimeFilter<"Subscription"> | Date | string
    updatedAt?: DateTimeFilter<"Subscription"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }

  export type SubscriptionOrderByWithRelationInput = {
    id?: SortOrder
    userId?: SortOrder
    stripeCustomerId?: SortOrder
    stripeSubscriptionId?: SortOrderInput | SortOrder
    stripePriceId?: SortOrderInput | SortOrder
    tier?: SortOrder
    status?: SortOrder
    tribunalAccess?: SortOrder
    musicalDnaUnlocked?: SortOrder
    tapestryAdvanced?: SortOrder
    keithDirectAccess?: SortOrder
    currentPeriodStart?: SortOrderInput | SortOrder
    currentPeriodEnd?: SortOrderInput | SortOrder
    cancelAtPeriodEnd?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    user?: UserOrderByWithRelationInput
  }

  export type SubscriptionWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    userId?: string
    stripeCustomerId?: string
    stripeSubscriptionId?: string
    AND?: SubscriptionWhereInput | SubscriptionWhereInput[]
    OR?: SubscriptionWhereInput[]
    NOT?: SubscriptionWhereInput | SubscriptionWhereInput[]
    stripePriceId?: StringNullableFilter<"Subscription"> | string | null
    tier?: StringFilter<"Subscription"> | string
    status?: StringFilter<"Subscription"> | string
    tribunalAccess?: BoolFilter<"Subscription"> | boolean
    musicalDnaUnlocked?: BoolFilter<"Subscription"> | boolean
    tapestryAdvanced?: BoolFilter<"Subscription"> | boolean
    keithDirectAccess?: BoolFilter<"Subscription"> | boolean
    currentPeriodStart?: DateTimeNullableFilter<"Subscription"> | Date | string | null
    currentPeriodEnd?: DateTimeNullableFilter<"Subscription"> | Date | string | null
    cancelAtPeriodEnd?: BoolFilter<"Subscription"> | boolean
    createdAt?: DateTimeFilter<"Subscription"> | Date | string
    updatedAt?: DateTimeFilter<"Subscription"> | Date | string
    user?: XOR<UserScalarRelationFilter, UserWhereInput>
  }, "id" | "userId" | "stripeCustomerId" | "stripeSubscriptionId">

  export type SubscriptionOrderByWithAggregationInput = {
    id?: SortOrder
    userId?: SortOrder
    stripeCustomerId?: SortOrder
    stripeSubscriptionId?: SortOrderInput | SortOrder
    stripePriceId?: SortOrderInput | SortOrder
    tier?: SortOrder
    status?: SortOrder
    tribunalAccess?: SortOrder
    musicalDnaUnlocked?: SortOrder
    tapestryAdvanced?: SortOrder
    keithDirectAccess?: SortOrder
    currentPeriodStart?: SortOrderInput | SortOrder
    currentPeriodEnd?: SortOrderInput | SortOrder
    cancelAtPeriodEnd?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    _count?: SubscriptionCountOrderByAggregateInput
    _max?: SubscriptionMaxOrderByAggregateInput
    _min?: SubscriptionMinOrderByAggregateInput
  }

  export type SubscriptionScalarWhereWithAggregatesInput = {
    AND?: SubscriptionScalarWhereWithAggregatesInput | SubscriptionScalarWhereWithAggregatesInput[]
    OR?: SubscriptionScalarWhereWithAggregatesInput[]
    NOT?: SubscriptionScalarWhereWithAggregatesInput | SubscriptionScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"Subscription"> | string
    userId?: StringWithAggregatesFilter<"Subscription"> | string
    stripeCustomerId?: StringWithAggregatesFilter<"Subscription"> | string
    stripeSubscriptionId?: StringNullableWithAggregatesFilter<"Subscription"> | string | null
    stripePriceId?: StringNullableWithAggregatesFilter<"Subscription"> | string | null
    tier?: StringWithAggregatesFilter<"Subscription"> | string
    status?: StringWithAggregatesFilter<"Subscription"> | string
    tribunalAccess?: BoolWithAggregatesFilter<"Subscription"> | boolean
    musicalDnaUnlocked?: BoolWithAggregatesFilter<"Subscription"> | boolean
    tapestryAdvanced?: BoolWithAggregatesFilter<"Subscription"> | boolean
    keithDirectAccess?: BoolWithAggregatesFilter<"Subscription"> | boolean
    currentPeriodStart?: DateTimeNullableWithAggregatesFilter<"Subscription"> | Date | string | null
    currentPeriodEnd?: DateTimeNullableWithAggregatesFilter<"Subscription"> | Date | string | null
    cancelAtPeriodEnd?: BoolWithAggregatesFilter<"Subscription"> | boolean
    createdAt?: DateTimeWithAggregatesFilter<"Subscription"> | Date | string
    updatedAt?: DateTimeWithAggregatesFilter<"Subscription"> | Date | string
  }

  export type FounderAlgorithmCoreWhereInput = {
    AND?: FounderAlgorithmCoreWhereInput | FounderAlgorithmCoreWhereInput[]
    OR?: FounderAlgorithmCoreWhereInput[]
    NOT?: FounderAlgorithmCoreWhereInput | FounderAlgorithmCoreWhereInput[]
    id?: StringFilter<"FounderAlgorithmCore"> | string
    principleStatement?: StringFilter<"FounderAlgorithmCore"> | string
    livedExperience?: StringFilter<"FounderAlgorithmCore"> | string
    algorithmicEncoding?: JsonFilter<"FounderAlgorithmCore">
    adhdAsJazzPrinciple?: StringNullableFilter<"FounderAlgorithmCore"> | string | null
    chaosCurrentMechanism?: StringNullableFilter<"FounderAlgorithmCore"> | string | null
    scarsToCodeTransform?: StringNullableFilter<"FounderAlgorithmCore"> | string | null
    founderIsAlgorithmCore?: StringNullableFilter<"FounderAlgorithmCore"> | string | null
    empowermentTriggers?: JsonFilter<"FounderAlgorithmCore">
    validationMechanisms?: JsonFilter<"FounderAlgorithmCore">
    consciousnessScaling?: JsonFilter<"FounderAlgorithmCore">
    plkImplementation?: JsonFilter<"FounderAlgorithmCore">
    tribunalOrchestration?: JsonFilter<"FounderAlgorithmCore">
    tapestryWeaving?: JsonFilter<"FounderAlgorithmCore">
    version?: StringFilter<"FounderAlgorithmCore"> | string
    active?: BoolFilter<"FounderAlgorithmCore"> | boolean
    createdAt?: DateTimeFilter<"FounderAlgorithmCore"> | Date | string
    updatedAt?: DateTimeFilter<"FounderAlgorithmCore"> | Date | string
  }

  export type FounderAlgorithmCoreOrderByWithRelationInput = {
    id?: SortOrder
    principleStatement?: SortOrder
    livedExperience?: SortOrder
    algorithmicEncoding?: SortOrder
    adhdAsJazzPrinciple?: SortOrderInput | SortOrder
    chaosCurrentMechanism?: SortOrderInput | SortOrder
    scarsToCodeTransform?: SortOrderInput | SortOrder
    founderIsAlgorithmCore?: SortOrderInput | SortOrder
    empowermentTriggers?: SortOrder
    validationMechanisms?: SortOrder
    consciousnessScaling?: SortOrder
    plkImplementation?: SortOrder
    tribunalOrchestration?: SortOrder
    tapestryWeaving?: SortOrder
    version?: SortOrder
    active?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type FounderAlgorithmCoreWhereUniqueInput = Prisma.AtLeast<{
    id?: string
    AND?: FounderAlgorithmCoreWhereInput | FounderAlgorithmCoreWhereInput[]
    OR?: FounderAlgorithmCoreWhereInput[]
    NOT?: FounderAlgorithmCoreWhereInput | FounderAlgorithmCoreWhereInput[]
    principleStatement?: StringFilter<"FounderAlgorithmCore"> | string
    livedExperience?: StringFilter<"FounderAlgorithmCore"> | string
    algorithmicEncoding?: JsonFilter<"FounderAlgorithmCore">
    adhdAsJazzPrinciple?: StringNullableFilter<"FounderAlgorithmCore"> | string | null
    chaosCurrentMechanism?: StringNullableFilter<"FounderAlgorithmCore"> | string | null
    scarsToCodeTransform?: StringNullableFilter<"FounderAlgorithmCore"> | string | null
    founderIsAlgorithmCore?: StringNullableFilter<"FounderAlgorithmCore"> | string | null
    empowermentTriggers?: JsonFilter<"FounderAlgorithmCore">
    validationMechanisms?: JsonFilter<"FounderAlgorithmCore">
    consciousnessScaling?: JsonFilter<"FounderAlgorithmCore">
    plkImplementation?: JsonFilter<"FounderAlgorithmCore">
    tribunalOrchestration?: JsonFilter<"FounderAlgorithmCore">
    tapestryWeaving?: JsonFilter<"FounderAlgorithmCore">
    version?: StringFilter<"FounderAlgorithmCore"> | string
    active?: BoolFilter<"FounderAlgorithmCore"> | boolean
    createdAt?: DateTimeFilter<"FounderAlgorithmCore"> | Date | string
    updatedAt?: DateTimeFilter<"FounderAlgorithmCore"> | Date | string
  }, "id">

  export type FounderAlgorithmCoreOrderByWithAggregationInput = {
    id?: SortOrder
    principleStatement?: SortOrder
    livedExperience?: SortOrder
    algorithmicEncoding?: SortOrder
    adhdAsJazzPrinciple?: SortOrderInput | SortOrder
    chaosCurrentMechanism?: SortOrderInput | SortOrder
    scarsToCodeTransform?: SortOrderInput | SortOrder
    founderIsAlgorithmCore?: SortOrderInput | SortOrder
    empowermentTriggers?: SortOrder
    validationMechanisms?: SortOrder
    consciousnessScaling?: SortOrder
    plkImplementation?: SortOrder
    tribunalOrchestration?: SortOrder
    tapestryWeaving?: SortOrder
    version?: SortOrder
    active?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
    _count?: FounderAlgorithmCoreCountOrderByAggregateInput
    _max?: FounderAlgorithmCoreMaxOrderByAggregateInput
    _min?: FounderAlgorithmCoreMinOrderByAggregateInput
  }

  export type FounderAlgorithmCoreScalarWhereWithAggregatesInput = {
    AND?: FounderAlgorithmCoreScalarWhereWithAggregatesInput | FounderAlgorithmCoreScalarWhereWithAggregatesInput[]
    OR?: FounderAlgorithmCoreScalarWhereWithAggregatesInput[]
    NOT?: FounderAlgorithmCoreScalarWhereWithAggregatesInput | FounderAlgorithmCoreScalarWhereWithAggregatesInput[]
    id?: StringWithAggregatesFilter<"FounderAlgorithmCore"> | string
    principleStatement?: StringWithAggregatesFilter<"FounderAlgorithmCore"> | string
    livedExperience?: StringWithAggregatesFilter<"FounderAlgorithmCore"> | string
    algorithmicEncoding?: JsonWithAggregatesFilter<"FounderAlgorithmCore">
    adhdAsJazzPrinciple?: StringNullableWithAggregatesFilter<"FounderAlgorithmCore"> | string | null
    chaosCurrentMechanism?: StringNullableWithAggregatesFilter<"FounderAlgorithmCore"> | string | null
    scarsToCodeTransform?: StringNullableWithAggregatesFilter<"FounderAlgorithmCore"> | string | null
    founderIsAlgorithmCore?: StringNullableWithAggregatesFilter<"FounderAlgorithmCore"> | string | null
    empowermentTriggers?: JsonWithAggregatesFilter<"FounderAlgorithmCore">
    validationMechanisms?: JsonWithAggregatesFilter<"FounderAlgorithmCore">
    consciousnessScaling?: JsonWithAggregatesFilter<"FounderAlgorithmCore">
    plkImplementation?: JsonWithAggregatesFilter<"FounderAlgorithmCore">
    tribunalOrchestration?: JsonWithAggregatesFilter<"FounderAlgorithmCore">
    tapestryWeaving?: JsonWithAggregatesFilter<"FounderAlgorithmCore">
    version?: StringWithAggregatesFilter<"FounderAlgorithmCore"> | string
    active?: BoolWithAggregatesFilter<"FounderAlgorithmCore"> | boolean
    createdAt?: DateTimeWithAggregatesFilter<"FounderAlgorithmCore"> | Date | string
    updatedAt?: DateTimeWithAggregatesFilter<"FounderAlgorithmCore"> | Date | string
  }

  export type UserCreateInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutUserInput
    subscription?: SubscriptionCreateNestedOneWithoutUserInput
  }

  export type UserUncheckedCreateInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropUncheckedCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionUncheckedCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutUserInput
    subscription?: SubscriptionUncheckedCreateNestedOneWithoutUserInput
  }

  export type UserUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUpdateOneWithoutUserNestedInput
  }

  export type UserUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUncheckedUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUncheckedUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUncheckedUpdateOneWithoutUserNestedInput
  }

  export type UserCreateManyInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type UserUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type UserUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessProfileCreateInput = {
    id?: string
    plkVersion?: string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: number
    plkProcessingStyle?: string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileCreatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: number
    consciousnessCoherence?: number
    authenticityScore?: number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: string
    foundationalTruth?: string | null
    coreWisdom?: string | null
    revolutionaryPotential?: number
    chaosCurrentIdentified?: boolean
    jazzFrequency?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    user: UserCreateNestedOneWithoutConsciousnessProfileInput
  }

  export type ConsciousnessProfileUncheckedCreateInput = {
    id?: string
    userId: string
    plkVersion?: string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: number
    plkProcessingStyle?: string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileCreatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: number
    consciousnessCoherence?: number
    authenticityScore?: number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: string
    foundationalTruth?: string | null
    coreWisdom?: string | null
    revolutionaryPotential?: number
    chaosCurrentIdentified?: boolean
    jazzFrequency?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type ConsciousnessProfileUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    plkVersion?: StringFieldUpdateOperationsInput | string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: FloatFieldUpdateOperationsInput | number
    plkProcessingStyle?: NullableStringFieldUpdateOperationsInput | string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileUpdatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: IntFieldUpdateOperationsInput | number
    consciousnessCoherence?: FloatFieldUpdateOperationsInput | number
    authenticityScore?: FloatFieldUpdateOperationsInput | number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: StringFieldUpdateOperationsInput | string
    foundationalTruth?: NullableStringFieldUpdateOperationsInput | string | null
    coreWisdom?: NullableStringFieldUpdateOperationsInput | string | null
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    chaosCurrentIdentified?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequency?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutConsciousnessProfileNestedInput
  }

  export type ConsciousnessProfileUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    plkVersion?: StringFieldUpdateOperationsInput | string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: FloatFieldUpdateOperationsInput | number
    plkProcessingStyle?: NullableStringFieldUpdateOperationsInput | string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileUpdatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: IntFieldUpdateOperationsInput | number
    consciousnessCoherence?: FloatFieldUpdateOperationsInput | number
    authenticityScore?: FloatFieldUpdateOperationsInput | number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: StringFieldUpdateOperationsInput | string
    foundationalTruth?: NullableStringFieldUpdateOperationsInput | string | null
    coreWisdom?: NullableStringFieldUpdateOperationsInput | string | null
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    chaosCurrentIdentified?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequency?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessProfileCreateManyInput = {
    id?: string
    userId: string
    plkVersion?: string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: number
    plkProcessingStyle?: string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileCreatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: number
    consciousnessCoherence?: number
    authenticityScore?: number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: string
    foundationalTruth?: string | null
    coreWisdom?: string | null
    revolutionaryPotential?: number
    chaosCurrentIdentified?: boolean
    jazzFrequency?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type ConsciousnessProfileUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    plkVersion?: StringFieldUpdateOperationsInput | string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: FloatFieldUpdateOperationsInput | number
    plkProcessingStyle?: NullableStringFieldUpdateOperationsInput | string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileUpdatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: IntFieldUpdateOperationsInput | number
    consciousnessCoherence?: FloatFieldUpdateOperationsInput | number
    authenticityScore?: FloatFieldUpdateOperationsInput | number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: StringFieldUpdateOperationsInput | string
    foundationalTruth?: NullableStringFieldUpdateOperationsInput | string | null
    coreWisdom?: NullableStringFieldUpdateOperationsInput | string | null
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    chaosCurrentIdentified?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequency?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessProfileUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    plkVersion?: StringFieldUpdateOperationsInput | string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: FloatFieldUpdateOperationsInput | number
    plkProcessingStyle?: NullableStringFieldUpdateOperationsInput | string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileUpdatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: IntFieldUpdateOperationsInput | number
    consciousnessCoherence?: FloatFieldUpdateOperationsInput | number
    authenticityScore?: FloatFieldUpdateOperationsInput | number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: StringFieldUpdateOperationsInput | string
    foundationalTruth?: NullableStringFieldUpdateOperationsInput | string | null
    coreWisdom?: NullableStringFieldUpdateOperationsInput | string | null
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    chaosCurrentIdentified?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequency?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type BucketDropCreateInput = {
    id?: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
    user: UserCreateNestedOneWithoutBucketDropsInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutBucketDropInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutBucketDropInput
  }

  export type BucketDropUncheckedCreateInput = {
    id?: string
    userId: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutBucketDropInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutBucketDropInput
  }

  export type BucketDropUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutBucketDropsNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutBucketDropNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutBucketDropNestedInput
  }

  export type BucketDropUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutBucketDropNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutBucketDropNestedInput
  }

  export type BucketDropCreateManyInput = {
    id?: string
    userId: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
  }

  export type BucketDropUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type BucketDropUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TapestryNodeCreateInput = {
    id?: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    createdAt?: Date | string
    updatedAt?: Date | string
    user: UserCreateNestedOneWithoutTapestryNodesInput
    bucketDrop?: BucketDropCreateNestedOneWithoutTapestryNodesInput
  }

  export type TapestryNodeUncheckedCreateInput = {
    id?: string
    userId: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    bucketDropId?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type TapestryNodeUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutTapestryNodesNestedInput
    bucketDrop?: BucketDropUpdateOneWithoutTapestryNodesNestedInput
  }

  export type TapestryNodeUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    bucketDropId?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TapestryNodeCreateManyInput = {
    id?: string
    userId: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    bucketDropId?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type TapestryNodeUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TapestryNodeUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    bucketDropId?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TribunalSessionCreateInput = {
    id?: string
    queryText: string
    sessionType?: string
    openaiResponse?: string | null
    anthropicResponse?: string | null
    perplexityResponse?: string | null
    geminiResponse?: string | null
    consensusScore?: number
    empowermentConsensus?: number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: Date | string | null
    duration?: number | null
    personasUsed?: TribunalSessionCreatepersonasUsedInput | string[]
    createdAt?: Date | string
    user: UserCreateNestedOneWithoutTribunalSessionsInput
  }

  export type TribunalSessionUncheckedCreateInput = {
    id?: string
    userId: string
    queryText: string
    sessionType?: string
    openaiResponse?: string | null
    anthropicResponse?: string | null
    perplexityResponse?: string | null
    geminiResponse?: string | null
    consensusScore?: number
    empowermentConsensus?: number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: Date | string | null
    duration?: number | null
    personasUsed?: TribunalSessionCreatepersonasUsedInput | string[]
    createdAt?: Date | string
  }

  export type TribunalSessionUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    queryText?: StringFieldUpdateOperationsInput | string
    sessionType?: StringFieldUpdateOperationsInput | string
    openaiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    anthropicResponse?: NullableStringFieldUpdateOperationsInput | string | null
    perplexityResponse?: NullableStringFieldUpdateOperationsInput | string | null
    geminiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    consensusScore?: FloatFieldUpdateOperationsInput | number
    empowermentConsensus?: FloatFieldUpdateOperationsInput | number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: BoolFieldUpdateOperationsInput | boolean
    foundationalTruthHit?: BoolFieldUpdateOperationsInput | boolean
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    duration?: NullableIntFieldUpdateOperationsInput | number | null
    personasUsed?: TribunalSessionUpdatepersonasUsedInput | string[]
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutTribunalSessionsNestedInput
  }

  export type TribunalSessionUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    queryText?: StringFieldUpdateOperationsInput | string
    sessionType?: StringFieldUpdateOperationsInput | string
    openaiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    anthropicResponse?: NullableStringFieldUpdateOperationsInput | string | null
    perplexityResponse?: NullableStringFieldUpdateOperationsInput | string | null
    geminiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    consensusScore?: FloatFieldUpdateOperationsInput | number
    empowermentConsensus?: FloatFieldUpdateOperationsInput | number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: BoolFieldUpdateOperationsInput | boolean
    foundationalTruthHit?: BoolFieldUpdateOperationsInput | boolean
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    duration?: NullableIntFieldUpdateOperationsInput | number | null
    personasUsed?: TribunalSessionUpdatepersonasUsedInput | string[]
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TribunalSessionCreateManyInput = {
    id?: string
    userId: string
    queryText: string
    sessionType?: string
    openaiResponse?: string | null
    anthropicResponse?: string | null
    perplexityResponse?: string | null
    geminiResponse?: string | null
    consensusScore?: number
    empowermentConsensus?: number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: Date | string | null
    duration?: number | null
    personasUsed?: TribunalSessionCreatepersonasUsedInput | string[]
    createdAt?: Date | string
  }

  export type TribunalSessionUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    queryText?: StringFieldUpdateOperationsInput | string
    sessionType?: StringFieldUpdateOperationsInput | string
    openaiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    anthropicResponse?: NullableStringFieldUpdateOperationsInput | string | null
    perplexityResponse?: NullableStringFieldUpdateOperationsInput | string | null
    geminiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    consensusScore?: FloatFieldUpdateOperationsInput | number
    empowermentConsensus?: FloatFieldUpdateOperationsInput | number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: BoolFieldUpdateOperationsInput | boolean
    foundationalTruthHit?: BoolFieldUpdateOperationsInput | boolean
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    duration?: NullableIntFieldUpdateOperationsInput | number | null
    personasUsed?: TribunalSessionUpdatepersonasUsedInput | string[]
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TribunalSessionUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    queryText?: StringFieldUpdateOperationsInput | string
    sessionType?: StringFieldUpdateOperationsInput | string
    openaiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    anthropicResponse?: NullableStringFieldUpdateOperationsInput | string | null
    perplexityResponse?: NullableStringFieldUpdateOperationsInput | string | null
    geminiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    consensusScore?: FloatFieldUpdateOperationsInput | number
    empowermentConsensus?: FloatFieldUpdateOperationsInput | number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: BoolFieldUpdateOperationsInput | boolean
    foundationalTruthHit?: BoolFieldUpdateOperationsInput | boolean
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    duration?: NullableIntFieldUpdateOperationsInput | number | null
    personasUsed?: TribunalSessionUpdatepersonasUsedInput | string[]
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type MusicalDnaAnalysisCreateInput = {
    id?: string
    primaryGenres?: MusicalDnaAnalysisCreateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisCreateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: number
    introspectionLevel?: number
    resilienceMarkers?: number
    connectionLonging?: number
    catharticProcessing?: number
    narrativeArc?: string | null
    transformationStage?: string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: number
    confidenceLevel?: number
    lastSpotifySync?: Date | string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    user: UserCreateNestedOneWithoutMusicalDnaAnalysesInput
  }

  export type MusicalDnaAnalysisUncheckedCreateInput = {
    id?: string
    userId: string
    primaryGenres?: MusicalDnaAnalysisCreateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisCreateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: number
    introspectionLevel?: number
    resilienceMarkers?: number
    connectionLonging?: number
    catharticProcessing?: number
    narrativeArc?: string | null
    transformationStage?: string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: number
    confidenceLevel?: number
    lastSpotifySync?: Date | string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type MusicalDnaAnalysisUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    primaryGenres?: MusicalDnaAnalysisUpdateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisUpdateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: FloatFieldUpdateOperationsInput | number
    introspectionLevel?: FloatFieldUpdateOperationsInput | number
    resilienceMarkers?: FloatFieldUpdateOperationsInput | number
    connectionLonging?: FloatFieldUpdateOperationsInput | number
    catharticProcessing?: FloatFieldUpdateOperationsInput | number
    narrativeArc?: NullableStringFieldUpdateOperationsInput | string | null
    transformationStage?: NullableStringFieldUpdateOperationsInput | string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: NullableStringFieldUpdateOperationsInput | string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: IntFieldUpdateOperationsInput | number
    confidenceLevel?: FloatFieldUpdateOperationsInput | number
    lastSpotifySync?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutMusicalDnaAnalysesNestedInput
  }

  export type MusicalDnaAnalysisUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    primaryGenres?: MusicalDnaAnalysisUpdateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisUpdateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: FloatFieldUpdateOperationsInput | number
    introspectionLevel?: FloatFieldUpdateOperationsInput | number
    resilienceMarkers?: FloatFieldUpdateOperationsInput | number
    connectionLonging?: FloatFieldUpdateOperationsInput | number
    catharticProcessing?: FloatFieldUpdateOperationsInput | number
    narrativeArc?: NullableStringFieldUpdateOperationsInput | string | null
    transformationStage?: NullableStringFieldUpdateOperationsInput | string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: NullableStringFieldUpdateOperationsInput | string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: IntFieldUpdateOperationsInput | number
    confidenceLevel?: FloatFieldUpdateOperationsInput | number
    lastSpotifySync?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type MusicalDnaAnalysisCreateManyInput = {
    id?: string
    userId: string
    primaryGenres?: MusicalDnaAnalysisCreateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisCreateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: number
    introspectionLevel?: number
    resilienceMarkers?: number
    connectionLonging?: number
    catharticProcessing?: number
    narrativeArc?: string | null
    transformationStage?: string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: number
    confidenceLevel?: number
    lastSpotifySync?: Date | string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type MusicalDnaAnalysisUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    primaryGenres?: MusicalDnaAnalysisUpdateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisUpdateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: FloatFieldUpdateOperationsInput | number
    introspectionLevel?: FloatFieldUpdateOperationsInput | number
    resilienceMarkers?: FloatFieldUpdateOperationsInput | number
    connectionLonging?: FloatFieldUpdateOperationsInput | number
    catharticProcessing?: FloatFieldUpdateOperationsInput | number
    narrativeArc?: NullableStringFieldUpdateOperationsInput | string | null
    transformationStage?: NullableStringFieldUpdateOperationsInput | string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: NullableStringFieldUpdateOperationsInput | string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: IntFieldUpdateOperationsInput | number
    confidenceLevel?: FloatFieldUpdateOperationsInput | number
    lastSpotifySync?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type MusicalDnaAnalysisUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    primaryGenres?: MusicalDnaAnalysisUpdateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisUpdateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: FloatFieldUpdateOperationsInput | number
    introspectionLevel?: FloatFieldUpdateOperationsInput | number
    resilienceMarkers?: FloatFieldUpdateOperationsInput | number
    connectionLonging?: FloatFieldUpdateOperationsInput | number
    catharticProcessing?: FloatFieldUpdateOperationsInput | number
    narrativeArc?: NullableStringFieldUpdateOperationsInput | string | null
    transformationStage?: NullableStringFieldUpdateOperationsInput | string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: NullableStringFieldUpdateOperationsInput | string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: IntFieldUpdateOperationsInput | number
    confidenceLevel?: FloatFieldUpdateOperationsInput | number
    lastSpotifySync?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessMetricCreateInput = {
    id?: string
    attentionLevel?: number
    flowStateIndicator?: number
    executiveFunctionLoad?: number
    hyperfocusActive?: boolean
    empowermentMomentum?: number
    authenticityAlignment?: number
    consciousnessClarity?: number
    revolutionaryReadiness?: number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: string | null
    energyLevel?: number
    supportNeeded?: boolean
    interventionType?: string | null
    timestamp?: Date | string
    user: UserCreateNestedOneWithoutConsciousnessMetricsInput
  }

  export type ConsciousnessMetricUncheckedCreateInput = {
    id?: string
    userId: string
    attentionLevel?: number
    flowStateIndicator?: number
    executiveFunctionLoad?: number
    hyperfocusActive?: boolean
    empowermentMomentum?: number
    authenticityAlignment?: number
    consciousnessClarity?: number
    revolutionaryReadiness?: number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: string | null
    energyLevel?: number
    supportNeeded?: boolean
    interventionType?: string | null
    timestamp?: Date | string
  }

  export type ConsciousnessMetricUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    attentionLevel?: IntFieldUpdateOperationsInput | number
    flowStateIndicator?: FloatFieldUpdateOperationsInput | number
    executiveFunctionLoad?: FloatFieldUpdateOperationsInput | number
    hyperfocusActive?: BoolFieldUpdateOperationsInput | boolean
    empowermentMomentum?: FloatFieldUpdateOperationsInput | number
    authenticityAlignment?: FloatFieldUpdateOperationsInput | number
    consciousnessClarity?: FloatFieldUpdateOperationsInput | number
    revolutionaryReadiness?: FloatFieldUpdateOperationsInput | number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: NullableStringFieldUpdateOperationsInput | string | null
    energyLevel?: IntFieldUpdateOperationsInput | number
    supportNeeded?: BoolFieldUpdateOperationsInput | boolean
    interventionType?: NullableStringFieldUpdateOperationsInput | string | null
    timestamp?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutConsciousnessMetricsNestedInput
  }

  export type ConsciousnessMetricUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    attentionLevel?: IntFieldUpdateOperationsInput | number
    flowStateIndicator?: FloatFieldUpdateOperationsInput | number
    executiveFunctionLoad?: FloatFieldUpdateOperationsInput | number
    hyperfocusActive?: BoolFieldUpdateOperationsInput | boolean
    empowermentMomentum?: FloatFieldUpdateOperationsInput | number
    authenticityAlignment?: FloatFieldUpdateOperationsInput | number
    consciousnessClarity?: FloatFieldUpdateOperationsInput | number
    revolutionaryReadiness?: FloatFieldUpdateOperationsInput | number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: NullableStringFieldUpdateOperationsInput | string | null
    energyLevel?: IntFieldUpdateOperationsInput | number
    supportNeeded?: BoolFieldUpdateOperationsInput | boolean
    interventionType?: NullableStringFieldUpdateOperationsInput | string | null
    timestamp?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessMetricCreateManyInput = {
    id?: string
    userId: string
    attentionLevel?: number
    flowStateIndicator?: number
    executiveFunctionLoad?: number
    hyperfocusActive?: boolean
    empowermentMomentum?: number
    authenticityAlignment?: number
    consciousnessClarity?: number
    revolutionaryReadiness?: number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: string | null
    energyLevel?: number
    supportNeeded?: boolean
    interventionType?: string | null
    timestamp?: Date | string
  }

  export type ConsciousnessMetricUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    attentionLevel?: IntFieldUpdateOperationsInput | number
    flowStateIndicator?: FloatFieldUpdateOperationsInput | number
    executiveFunctionLoad?: FloatFieldUpdateOperationsInput | number
    hyperfocusActive?: BoolFieldUpdateOperationsInput | boolean
    empowermentMomentum?: FloatFieldUpdateOperationsInput | number
    authenticityAlignment?: FloatFieldUpdateOperationsInput | number
    consciousnessClarity?: FloatFieldUpdateOperationsInput | number
    revolutionaryReadiness?: FloatFieldUpdateOperationsInput | number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: NullableStringFieldUpdateOperationsInput | string | null
    energyLevel?: IntFieldUpdateOperationsInput | number
    supportNeeded?: BoolFieldUpdateOperationsInput | boolean
    interventionType?: NullableStringFieldUpdateOperationsInput | string | null
    timestamp?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessMetricUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    attentionLevel?: IntFieldUpdateOperationsInput | number
    flowStateIndicator?: FloatFieldUpdateOperationsInput | number
    executiveFunctionLoad?: FloatFieldUpdateOperationsInput | number
    hyperfocusActive?: BoolFieldUpdateOperationsInput | boolean
    empowermentMomentum?: FloatFieldUpdateOperationsInput | number
    authenticityAlignment?: FloatFieldUpdateOperationsInput | number
    consciousnessClarity?: FloatFieldUpdateOperationsInput | number
    revolutionaryReadiness?: FloatFieldUpdateOperationsInput | number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: NullableStringFieldUpdateOperationsInput | string | null
    energyLevel?: IntFieldUpdateOperationsInput | number
    supportNeeded?: BoolFieldUpdateOperationsInput | boolean
    interventionType?: NullableStringFieldUpdateOperationsInput | string | null
    timestamp?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type EmpowermentEventCreateInput = {
    id?: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
    user: UserCreateNestedOneWithoutEmpowermentEventsInput
    bucketDrop?: BucketDropCreateNestedOneWithoutEmpowermentEventsInput
  }

  export type EmpowermentEventUncheckedCreateInput = {
    id?: string
    userId: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    bucketDropId?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
  }

  export type EmpowermentEventUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutEmpowermentEventsNestedInput
    bucketDrop?: BucketDropUpdateOneWithoutEmpowermentEventsNestedInput
  }

  export type EmpowermentEventUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    bucketDropId?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type EmpowermentEventCreateManyInput = {
    id?: string
    userId: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    bucketDropId?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
  }

  export type EmpowermentEventUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type EmpowermentEventUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    bucketDropId?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type SubscriptionCreateInput = {
    id?: string
    stripeCustomerId: string
    stripeSubscriptionId?: string | null
    stripePriceId?: string | null
    tier?: string
    status?: string
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: Date | string | null
    currentPeriodEnd?: Date | string | null
    cancelAtPeriodEnd?: boolean
    createdAt?: Date | string
    updatedAt?: Date | string
    user: UserCreateNestedOneWithoutSubscriptionInput
  }

  export type SubscriptionUncheckedCreateInput = {
    id?: string
    userId: string
    stripeCustomerId: string
    stripeSubscriptionId?: string | null
    stripePriceId?: string | null
    tier?: string
    status?: string
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: Date | string | null
    currentPeriodEnd?: Date | string | null
    cancelAtPeriodEnd?: boolean
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type SubscriptionUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    stripeCustomerId?: StringFieldUpdateOperationsInput | string
    stripeSubscriptionId?: NullableStringFieldUpdateOperationsInput | string | null
    stripePriceId?: NullableStringFieldUpdateOperationsInput | string | null
    tier?: StringFieldUpdateOperationsInput | string
    status?: StringFieldUpdateOperationsInput | string
    tribunalAccess?: BoolFieldUpdateOperationsInput | boolean
    musicalDnaUnlocked?: BoolFieldUpdateOperationsInput | boolean
    tapestryAdvanced?: BoolFieldUpdateOperationsInput | boolean
    keithDirectAccess?: BoolFieldUpdateOperationsInput | boolean
    currentPeriodStart?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    currentPeriodEnd?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    cancelAtPeriodEnd?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutSubscriptionNestedInput
  }

  export type SubscriptionUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    stripeCustomerId?: StringFieldUpdateOperationsInput | string
    stripeSubscriptionId?: NullableStringFieldUpdateOperationsInput | string | null
    stripePriceId?: NullableStringFieldUpdateOperationsInput | string | null
    tier?: StringFieldUpdateOperationsInput | string
    status?: StringFieldUpdateOperationsInput | string
    tribunalAccess?: BoolFieldUpdateOperationsInput | boolean
    musicalDnaUnlocked?: BoolFieldUpdateOperationsInput | boolean
    tapestryAdvanced?: BoolFieldUpdateOperationsInput | boolean
    keithDirectAccess?: BoolFieldUpdateOperationsInput | boolean
    currentPeriodStart?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    currentPeriodEnd?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    cancelAtPeriodEnd?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type SubscriptionCreateManyInput = {
    id?: string
    userId: string
    stripeCustomerId: string
    stripeSubscriptionId?: string | null
    stripePriceId?: string | null
    tier?: string
    status?: string
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: Date | string | null
    currentPeriodEnd?: Date | string | null
    cancelAtPeriodEnd?: boolean
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type SubscriptionUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    stripeCustomerId?: StringFieldUpdateOperationsInput | string
    stripeSubscriptionId?: NullableStringFieldUpdateOperationsInput | string | null
    stripePriceId?: NullableStringFieldUpdateOperationsInput | string | null
    tier?: StringFieldUpdateOperationsInput | string
    status?: StringFieldUpdateOperationsInput | string
    tribunalAccess?: BoolFieldUpdateOperationsInput | boolean
    musicalDnaUnlocked?: BoolFieldUpdateOperationsInput | boolean
    tapestryAdvanced?: BoolFieldUpdateOperationsInput | boolean
    keithDirectAccess?: BoolFieldUpdateOperationsInput | boolean
    currentPeriodStart?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    currentPeriodEnd?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    cancelAtPeriodEnd?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type SubscriptionUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    stripeCustomerId?: StringFieldUpdateOperationsInput | string
    stripeSubscriptionId?: NullableStringFieldUpdateOperationsInput | string | null
    stripePriceId?: NullableStringFieldUpdateOperationsInput | string | null
    tier?: StringFieldUpdateOperationsInput | string
    status?: StringFieldUpdateOperationsInput | string
    tribunalAccess?: BoolFieldUpdateOperationsInput | boolean
    musicalDnaUnlocked?: BoolFieldUpdateOperationsInput | boolean
    tapestryAdvanced?: BoolFieldUpdateOperationsInput | boolean
    keithDirectAccess?: BoolFieldUpdateOperationsInput | boolean
    currentPeriodStart?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    currentPeriodEnd?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    cancelAtPeriodEnd?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type FounderAlgorithmCoreCreateInput = {
    id?: string
    principleStatement: string
    livedExperience: string
    algorithmicEncoding?: JsonNullValueInput | InputJsonValue
    adhdAsJazzPrinciple?: string | null
    chaosCurrentMechanism?: string | null
    scarsToCodeTransform?: string | null
    founderIsAlgorithmCore?: string | null
    empowermentTriggers?: JsonNullValueInput | InputJsonValue
    validationMechanisms?: JsonNullValueInput | InputJsonValue
    consciousnessScaling?: JsonNullValueInput | InputJsonValue
    plkImplementation?: JsonNullValueInput | InputJsonValue
    tribunalOrchestration?: JsonNullValueInput | InputJsonValue
    tapestryWeaving?: JsonNullValueInput | InputJsonValue
    version?: string
    active?: boolean
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type FounderAlgorithmCoreUncheckedCreateInput = {
    id?: string
    principleStatement: string
    livedExperience: string
    algorithmicEncoding?: JsonNullValueInput | InputJsonValue
    adhdAsJazzPrinciple?: string | null
    chaosCurrentMechanism?: string | null
    scarsToCodeTransform?: string | null
    founderIsAlgorithmCore?: string | null
    empowermentTriggers?: JsonNullValueInput | InputJsonValue
    validationMechanisms?: JsonNullValueInput | InputJsonValue
    consciousnessScaling?: JsonNullValueInput | InputJsonValue
    plkImplementation?: JsonNullValueInput | InputJsonValue
    tribunalOrchestration?: JsonNullValueInput | InputJsonValue
    tapestryWeaving?: JsonNullValueInput | InputJsonValue
    version?: string
    active?: boolean
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type FounderAlgorithmCoreUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    principleStatement?: StringFieldUpdateOperationsInput | string
    livedExperience?: StringFieldUpdateOperationsInput | string
    algorithmicEncoding?: JsonNullValueInput | InputJsonValue
    adhdAsJazzPrinciple?: NullableStringFieldUpdateOperationsInput | string | null
    chaosCurrentMechanism?: NullableStringFieldUpdateOperationsInput | string | null
    scarsToCodeTransform?: NullableStringFieldUpdateOperationsInput | string | null
    founderIsAlgorithmCore?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentTriggers?: JsonNullValueInput | InputJsonValue
    validationMechanisms?: JsonNullValueInput | InputJsonValue
    consciousnessScaling?: JsonNullValueInput | InputJsonValue
    plkImplementation?: JsonNullValueInput | InputJsonValue
    tribunalOrchestration?: JsonNullValueInput | InputJsonValue
    tapestryWeaving?: JsonNullValueInput | InputJsonValue
    version?: StringFieldUpdateOperationsInput | string
    active?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type FounderAlgorithmCoreUncheckedUpdateInput = {
    id?: StringFieldUpdateOperationsInput | string
    principleStatement?: StringFieldUpdateOperationsInput | string
    livedExperience?: StringFieldUpdateOperationsInput | string
    algorithmicEncoding?: JsonNullValueInput | InputJsonValue
    adhdAsJazzPrinciple?: NullableStringFieldUpdateOperationsInput | string | null
    chaosCurrentMechanism?: NullableStringFieldUpdateOperationsInput | string | null
    scarsToCodeTransform?: NullableStringFieldUpdateOperationsInput | string | null
    founderIsAlgorithmCore?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentTriggers?: JsonNullValueInput | InputJsonValue
    validationMechanisms?: JsonNullValueInput | InputJsonValue
    consciousnessScaling?: JsonNullValueInput | InputJsonValue
    plkImplementation?: JsonNullValueInput | InputJsonValue
    tribunalOrchestration?: JsonNullValueInput | InputJsonValue
    tapestryWeaving?: JsonNullValueInput | InputJsonValue
    version?: StringFieldUpdateOperationsInput | string
    active?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type FounderAlgorithmCoreCreateManyInput = {
    id?: string
    principleStatement: string
    livedExperience: string
    algorithmicEncoding?: JsonNullValueInput | InputJsonValue
    adhdAsJazzPrinciple?: string | null
    chaosCurrentMechanism?: string | null
    scarsToCodeTransform?: string | null
    founderIsAlgorithmCore?: string | null
    empowermentTriggers?: JsonNullValueInput | InputJsonValue
    validationMechanisms?: JsonNullValueInput | InputJsonValue
    consciousnessScaling?: JsonNullValueInput | InputJsonValue
    plkImplementation?: JsonNullValueInput | InputJsonValue
    tribunalOrchestration?: JsonNullValueInput | InputJsonValue
    tapestryWeaving?: JsonNullValueInput | InputJsonValue
    version?: string
    active?: boolean
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type FounderAlgorithmCoreUpdateManyMutationInput = {
    id?: StringFieldUpdateOperationsInput | string
    principleStatement?: StringFieldUpdateOperationsInput | string
    livedExperience?: StringFieldUpdateOperationsInput | string
    algorithmicEncoding?: JsonNullValueInput | InputJsonValue
    adhdAsJazzPrinciple?: NullableStringFieldUpdateOperationsInput | string | null
    chaosCurrentMechanism?: NullableStringFieldUpdateOperationsInput | string | null
    scarsToCodeTransform?: NullableStringFieldUpdateOperationsInput | string | null
    founderIsAlgorithmCore?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentTriggers?: JsonNullValueInput | InputJsonValue
    validationMechanisms?: JsonNullValueInput | InputJsonValue
    consciousnessScaling?: JsonNullValueInput | InputJsonValue
    plkImplementation?: JsonNullValueInput | InputJsonValue
    tribunalOrchestration?: JsonNullValueInput | InputJsonValue
    tapestryWeaving?: JsonNullValueInput | InputJsonValue
    version?: StringFieldUpdateOperationsInput | string
    active?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type FounderAlgorithmCoreUncheckedUpdateManyInput = {
    id?: StringFieldUpdateOperationsInput | string
    principleStatement?: StringFieldUpdateOperationsInput | string
    livedExperience?: StringFieldUpdateOperationsInput | string
    algorithmicEncoding?: JsonNullValueInput | InputJsonValue
    adhdAsJazzPrinciple?: NullableStringFieldUpdateOperationsInput | string | null
    chaosCurrentMechanism?: NullableStringFieldUpdateOperationsInput | string | null
    scarsToCodeTransform?: NullableStringFieldUpdateOperationsInput | string | null
    founderIsAlgorithmCore?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentTriggers?: JsonNullValueInput | InputJsonValue
    validationMechanisms?: JsonNullValueInput | InputJsonValue
    consciousnessScaling?: JsonNullValueInput | InputJsonValue
    plkImplementation?: JsonNullValueInput | InputJsonValue
    tribunalOrchestration?: JsonNullValueInput | InputJsonValue
    tapestryWeaving?: JsonNullValueInput | InputJsonValue
    version?: StringFieldUpdateOperationsInput | string
    active?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type StringFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel>
    in?: string[] | ListStringFieldRefInput<$PrismaModel>
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel>
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    mode?: QueryMode
    not?: NestedStringFilter<$PrismaModel> | string
  }

  export type StringNullableFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel> | null
    in?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    mode?: QueryMode
    not?: NestedStringNullableFilter<$PrismaModel> | string | null
  }

  export type DateTimeFilter<$PrismaModel = never> = {
    equals?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    in?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel>
    notIn?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel>
    lt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    lte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    not?: NestedDateTimeFilter<$PrismaModel> | Date | string
  }

  export type ConsciousnessProfileNullableScalarRelationFilter = {
    is?: ConsciousnessProfileWhereInput | null
    isNot?: ConsciousnessProfileWhereInput | null
  }

  export type BucketDropListRelationFilter = {
    every?: BucketDropWhereInput
    some?: BucketDropWhereInput
    none?: BucketDropWhereInput
  }

  export type TapestryNodeListRelationFilter = {
    every?: TapestryNodeWhereInput
    some?: TapestryNodeWhereInput
    none?: TapestryNodeWhereInput
  }

  export type TribunalSessionListRelationFilter = {
    every?: TribunalSessionWhereInput
    some?: TribunalSessionWhereInput
    none?: TribunalSessionWhereInput
  }

  export type ConsciousnessMetricListRelationFilter = {
    every?: ConsciousnessMetricWhereInput
    some?: ConsciousnessMetricWhereInput
    none?: ConsciousnessMetricWhereInput
  }

  export type MusicalDnaAnalysisListRelationFilter = {
    every?: MusicalDnaAnalysisWhereInput
    some?: MusicalDnaAnalysisWhereInput
    none?: MusicalDnaAnalysisWhereInput
  }

  export type EmpowermentEventListRelationFilter = {
    every?: EmpowermentEventWhereInput
    some?: EmpowermentEventWhereInput
    none?: EmpowermentEventWhereInput
  }

  export type SubscriptionNullableScalarRelationFilter = {
    is?: SubscriptionWhereInput | null
    isNot?: SubscriptionWhereInput | null
  }

  export type SortOrderInput = {
    sort: SortOrder
    nulls?: NullsOrder
  }

  export type BucketDropOrderByRelationAggregateInput = {
    _count?: SortOrder
  }

  export type TapestryNodeOrderByRelationAggregateInput = {
    _count?: SortOrder
  }

  export type TribunalSessionOrderByRelationAggregateInput = {
    _count?: SortOrder
  }

  export type ConsciousnessMetricOrderByRelationAggregateInput = {
    _count?: SortOrder
  }

  export type MusicalDnaAnalysisOrderByRelationAggregateInput = {
    _count?: SortOrder
  }

  export type EmpowermentEventOrderByRelationAggregateInput = {
    _count?: SortOrder
  }

  export type UserCountOrderByAggregateInput = {
    id?: SortOrder
    clerkId?: SortOrder
    email?: SortOrder
    username?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type UserMaxOrderByAggregateInput = {
    id?: SortOrder
    clerkId?: SortOrder
    email?: SortOrder
    username?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type UserMinOrderByAggregateInput = {
    id?: SortOrder
    clerkId?: SortOrder
    email?: SortOrder
    username?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type StringWithAggregatesFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel>
    in?: string[] | ListStringFieldRefInput<$PrismaModel>
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel>
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    mode?: QueryMode
    not?: NestedStringWithAggregatesFilter<$PrismaModel> | string
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedStringFilter<$PrismaModel>
    _max?: NestedStringFilter<$PrismaModel>
  }

  export type StringNullableWithAggregatesFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel> | null
    in?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    mode?: QueryMode
    not?: NestedStringNullableWithAggregatesFilter<$PrismaModel> | string | null
    _count?: NestedIntNullableFilter<$PrismaModel>
    _min?: NestedStringNullableFilter<$PrismaModel>
    _max?: NestedStringNullableFilter<$PrismaModel>
  }

  export type DateTimeWithAggregatesFilter<$PrismaModel = never> = {
    equals?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    in?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel>
    notIn?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel>
    lt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    lte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    not?: NestedDateTimeWithAggregatesFilter<$PrismaModel> | Date | string
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedDateTimeFilter<$PrismaModel>
    _max?: NestedDateTimeFilter<$PrismaModel>
  }
  export type JsonFilter<$PrismaModel = never> =
    | PatchUndefined<
        Either<Required<JsonFilterBase<$PrismaModel>>, Exclude<keyof Required<JsonFilterBase<$PrismaModel>>, 'path'>>,
        Required<JsonFilterBase<$PrismaModel>>
      >
    | OptionalFlat<Omit<Required<JsonFilterBase<$PrismaModel>>, 'path'>>

  export type JsonFilterBase<$PrismaModel = never> = {
    equals?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | JsonNullValueFilter
    path?: string[]
    mode?: QueryMode | EnumQueryModeFieldRefInput<$PrismaModel>
    string_contains?: string | StringFieldRefInput<$PrismaModel>
    string_starts_with?: string | StringFieldRefInput<$PrismaModel>
    string_ends_with?: string | StringFieldRefInput<$PrismaModel>
    array_starts_with?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    array_ends_with?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    array_contains?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    lt?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    lte?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    gt?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    gte?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    not?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | JsonNullValueFilter
  }

  export type FloatFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel>
    in?: number[] | ListFloatFieldRefInput<$PrismaModel>
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel>
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatFilter<$PrismaModel> | number
  }

  export type StringNullableListFilter<$PrismaModel = never> = {
    equals?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    has?: string | StringFieldRefInput<$PrismaModel> | null
    hasEvery?: string[] | ListStringFieldRefInput<$PrismaModel>
    hasSome?: string[] | ListStringFieldRefInput<$PrismaModel>
    isEmpty?: boolean
  }

  export type IntFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel>
    in?: number[] | ListIntFieldRefInput<$PrismaModel>
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel>
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntFilter<$PrismaModel> | number
  }

  export type BoolFilter<$PrismaModel = never> = {
    equals?: boolean | BooleanFieldRefInput<$PrismaModel>
    not?: NestedBoolFilter<$PrismaModel> | boolean
  }

  export type UserScalarRelationFilter = {
    is?: UserWhereInput
    isNot?: UserWhereInput
  }

  export type ConsciousnessProfileCountOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    plkVersion?: SortOrder
    plkMetaphorPatterns?: SortOrder
    plkCommunicationStyle?: SortOrder
    plkResonanceScore?: SortOrder
    plkProcessingStyle?: SortOrder
    adhdIndicators?: SortOrder
    autismIndicators?: SortOrder
    cognitiveStrengths?: SortOrder
    processingPreferences?: SortOrder
    attentionPatterns?: SortOrder
    hyperfocusAreas?: SortOrder
    executiveFunctionMap?: SortOrder
    empowermentLevel?: SortOrder
    consciousnessCoherence?: SortOrder
    authenticityScore?: SortOrder
    growthTrajectory?: SortOrder
    consciousnessGrade?: SortOrder
    foundationalTruth?: SortOrder
    coreWisdom?: SortOrder
    revolutionaryPotential?: SortOrder
    chaosCurrentIdentified?: SortOrder
    jazzFrequency?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type ConsciousnessProfileAvgOrderByAggregateInput = {
    plkResonanceScore?: SortOrder
    empowermentLevel?: SortOrder
    consciousnessCoherence?: SortOrder
    authenticityScore?: SortOrder
    revolutionaryPotential?: SortOrder
  }

  export type ConsciousnessProfileMaxOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    plkVersion?: SortOrder
    plkResonanceScore?: SortOrder
    plkProcessingStyle?: SortOrder
    empowermentLevel?: SortOrder
    consciousnessCoherence?: SortOrder
    authenticityScore?: SortOrder
    consciousnessGrade?: SortOrder
    foundationalTruth?: SortOrder
    coreWisdom?: SortOrder
    revolutionaryPotential?: SortOrder
    chaosCurrentIdentified?: SortOrder
    jazzFrequency?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type ConsciousnessProfileMinOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    plkVersion?: SortOrder
    plkResonanceScore?: SortOrder
    plkProcessingStyle?: SortOrder
    empowermentLevel?: SortOrder
    consciousnessCoherence?: SortOrder
    authenticityScore?: SortOrder
    consciousnessGrade?: SortOrder
    foundationalTruth?: SortOrder
    coreWisdom?: SortOrder
    revolutionaryPotential?: SortOrder
    chaosCurrentIdentified?: SortOrder
    jazzFrequency?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type ConsciousnessProfileSumOrderByAggregateInput = {
    plkResonanceScore?: SortOrder
    empowermentLevel?: SortOrder
    consciousnessCoherence?: SortOrder
    authenticityScore?: SortOrder
    revolutionaryPotential?: SortOrder
  }
  export type JsonWithAggregatesFilter<$PrismaModel = never> =
    | PatchUndefined<
        Either<Required<JsonWithAggregatesFilterBase<$PrismaModel>>, Exclude<keyof Required<JsonWithAggregatesFilterBase<$PrismaModel>>, 'path'>>,
        Required<JsonWithAggregatesFilterBase<$PrismaModel>>
      >
    | OptionalFlat<Omit<Required<JsonWithAggregatesFilterBase<$PrismaModel>>, 'path'>>

  export type JsonWithAggregatesFilterBase<$PrismaModel = never> = {
    equals?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | JsonNullValueFilter
    path?: string[]
    mode?: QueryMode | EnumQueryModeFieldRefInput<$PrismaModel>
    string_contains?: string | StringFieldRefInput<$PrismaModel>
    string_starts_with?: string | StringFieldRefInput<$PrismaModel>
    string_ends_with?: string | StringFieldRefInput<$PrismaModel>
    array_starts_with?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    array_ends_with?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    array_contains?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    lt?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    lte?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    gt?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    gte?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    not?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | JsonNullValueFilter
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedJsonFilter<$PrismaModel>
    _max?: NestedJsonFilter<$PrismaModel>
  }

  export type FloatWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel>
    in?: number[] | ListFloatFieldRefInput<$PrismaModel>
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel>
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatWithAggregatesFilter<$PrismaModel> | number
    _count?: NestedIntFilter<$PrismaModel>
    _avg?: NestedFloatFilter<$PrismaModel>
    _sum?: NestedFloatFilter<$PrismaModel>
    _min?: NestedFloatFilter<$PrismaModel>
    _max?: NestedFloatFilter<$PrismaModel>
  }

  export type IntWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel>
    in?: number[] | ListIntFieldRefInput<$PrismaModel>
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel>
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntWithAggregatesFilter<$PrismaModel> | number
    _count?: NestedIntFilter<$PrismaModel>
    _avg?: NestedFloatFilter<$PrismaModel>
    _sum?: NestedIntFilter<$PrismaModel>
    _min?: NestedIntFilter<$PrismaModel>
    _max?: NestedIntFilter<$PrismaModel>
  }

  export type BoolWithAggregatesFilter<$PrismaModel = never> = {
    equals?: boolean | BooleanFieldRefInput<$PrismaModel>
    not?: NestedBoolWithAggregatesFilter<$PrismaModel> | boolean
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedBoolFilter<$PrismaModel>
    _max?: NestedBoolFilter<$PrismaModel>
  }

  export type BucketDropCountOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    content?: SortOrder
    contentType?: SortOrder
    emotionalIntensity?: SortOrder
    urgencyLevel?: SortOrder
    cognitiveLoad?: SortOrder
    adhdContext?: SortOrder
    hyperfocusIndicator?: SortOrder
    executiveFunctionTag?: SortOrder
    plkResonance?: SortOrder
    metaphorExtracted?: SortOrder
    linguisticPattern?: SortOrder
    status?: SortOrder
    tapestryIntegrated?: SortOrder
    tribunalReviewed?: SortOrder
    capturedAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type BucketDropAvgOrderByAggregateInput = {
    emotionalIntensity?: SortOrder
    urgencyLevel?: SortOrder
    cognitiveLoad?: SortOrder
    plkResonance?: SortOrder
  }

  export type BucketDropMaxOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    content?: SortOrder
    contentType?: SortOrder
    emotionalIntensity?: SortOrder
    urgencyLevel?: SortOrder
    cognitiveLoad?: SortOrder
    hyperfocusIndicator?: SortOrder
    executiveFunctionTag?: SortOrder
    plkResonance?: SortOrder
    metaphorExtracted?: SortOrder
    linguisticPattern?: SortOrder
    status?: SortOrder
    tapestryIntegrated?: SortOrder
    tribunalReviewed?: SortOrder
    capturedAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type BucketDropMinOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    content?: SortOrder
    contentType?: SortOrder
    emotionalIntensity?: SortOrder
    urgencyLevel?: SortOrder
    cognitiveLoad?: SortOrder
    hyperfocusIndicator?: SortOrder
    executiveFunctionTag?: SortOrder
    plkResonance?: SortOrder
    metaphorExtracted?: SortOrder
    linguisticPattern?: SortOrder
    status?: SortOrder
    tapestryIntegrated?: SortOrder
    tribunalReviewed?: SortOrder
    capturedAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type BucketDropSumOrderByAggregateInput = {
    emotionalIntensity?: SortOrder
    urgencyLevel?: SortOrder
    cognitiveLoad?: SortOrder
    plkResonance?: SortOrder
  }

  export type FloatNullableFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel> | null
    in?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatNullableFilter<$PrismaModel> | number | null
  }

  export type FloatNullableListFilter<$PrismaModel = never> = {
    equals?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    has?: number | FloatFieldRefInput<$PrismaModel> | null
    hasEvery?: number[] | ListFloatFieldRefInput<$PrismaModel>
    hasSome?: number[] | ListFloatFieldRefInput<$PrismaModel>
    isEmpty?: boolean
  }

  export type BucketDropNullableScalarRelationFilter = {
    is?: BucketDropWhereInput | null
    isNot?: BucketDropWhereInput | null
  }

  export type TapestryNodeCountOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    xCoordinate?: SortOrder
    yCoordinate?: SortOrder
    zCoordinate?: SortOrder
    nodeSize?: SortOrder
    nodeColor?: SortOrder
    thoughtContent?: SortOrder
    emotionalResonance?: SortOrder
    consciousnessDepth?: SortOrder
    growthSignificance?: SortOrder
    connectedNodes?: SortOrder
    connectionStrengths?: SortOrder
    networkCentrality?: SortOrder
    aiInterpretation?: SortOrder
    patternCategory?: SortOrder
    empowermentPotential?: SortOrder
    bucketDropId?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type TapestryNodeAvgOrderByAggregateInput = {
    xCoordinate?: SortOrder
    yCoordinate?: SortOrder
    zCoordinate?: SortOrder
    nodeSize?: SortOrder
    emotionalResonance?: SortOrder
    consciousnessDepth?: SortOrder
    growthSignificance?: SortOrder
    connectionStrengths?: SortOrder
    networkCentrality?: SortOrder
    empowermentPotential?: SortOrder
  }

  export type TapestryNodeMaxOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    xCoordinate?: SortOrder
    yCoordinate?: SortOrder
    zCoordinate?: SortOrder
    nodeSize?: SortOrder
    nodeColor?: SortOrder
    thoughtContent?: SortOrder
    emotionalResonance?: SortOrder
    consciousnessDepth?: SortOrder
    growthSignificance?: SortOrder
    networkCentrality?: SortOrder
    patternCategory?: SortOrder
    empowermentPotential?: SortOrder
    bucketDropId?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type TapestryNodeMinOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    xCoordinate?: SortOrder
    yCoordinate?: SortOrder
    zCoordinate?: SortOrder
    nodeSize?: SortOrder
    nodeColor?: SortOrder
    thoughtContent?: SortOrder
    emotionalResonance?: SortOrder
    consciousnessDepth?: SortOrder
    growthSignificance?: SortOrder
    networkCentrality?: SortOrder
    patternCategory?: SortOrder
    empowermentPotential?: SortOrder
    bucketDropId?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type TapestryNodeSumOrderByAggregateInput = {
    xCoordinate?: SortOrder
    yCoordinate?: SortOrder
    zCoordinate?: SortOrder
    nodeSize?: SortOrder
    emotionalResonance?: SortOrder
    consciousnessDepth?: SortOrder
    growthSignificance?: SortOrder
    connectionStrengths?: SortOrder
    networkCentrality?: SortOrder
    empowermentPotential?: SortOrder
  }

  export type FloatNullableWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel> | null
    in?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatNullableWithAggregatesFilter<$PrismaModel> | number | null
    _count?: NestedIntNullableFilter<$PrismaModel>
    _avg?: NestedFloatNullableFilter<$PrismaModel>
    _sum?: NestedFloatNullableFilter<$PrismaModel>
    _min?: NestedFloatNullableFilter<$PrismaModel>
    _max?: NestedFloatNullableFilter<$PrismaModel>
  }

  export type DateTimeNullableFilter<$PrismaModel = never> = {
    equals?: Date | string | DateTimeFieldRefInput<$PrismaModel> | null
    in?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel> | null
    notIn?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel> | null
    lt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    lte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    not?: NestedDateTimeNullableFilter<$PrismaModel> | Date | string | null
  }

  export type IntNullableFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel> | null
    in?: number[] | ListIntFieldRefInput<$PrismaModel> | null
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel> | null
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntNullableFilter<$PrismaModel> | number | null
  }

  export type TribunalSessionCountOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    queryText?: SortOrder
    sessionType?: SortOrder
    openaiResponse?: SortOrder
    anthropicResponse?: SortOrder
    perplexityResponse?: SortOrder
    geminiResponse?: SortOrder
    consensusScore?: SortOrder
    empowermentConsensus?: SortOrder
    consciousnessInsights?: SortOrder
    keithWisdomTriggered?: SortOrder
    foundationalTruthHit?: SortOrder
    revolutionaryPotential?: SortOrder
    adhdAdaptations?: SortOrder
    processingAccommodations?: SortOrder
    cognitiveAccessibility?: SortOrder
    completedAt?: SortOrder
    duration?: SortOrder
    personasUsed?: SortOrder
    createdAt?: SortOrder
  }

  export type TribunalSessionAvgOrderByAggregateInput = {
    consensusScore?: SortOrder
    empowermentConsensus?: SortOrder
    revolutionaryPotential?: SortOrder
    duration?: SortOrder
  }

  export type TribunalSessionMaxOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    queryText?: SortOrder
    sessionType?: SortOrder
    openaiResponse?: SortOrder
    anthropicResponse?: SortOrder
    perplexityResponse?: SortOrder
    geminiResponse?: SortOrder
    consensusScore?: SortOrder
    empowermentConsensus?: SortOrder
    keithWisdomTriggered?: SortOrder
    foundationalTruthHit?: SortOrder
    revolutionaryPotential?: SortOrder
    completedAt?: SortOrder
    duration?: SortOrder
    createdAt?: SortOrder
  }

  export type TribunalSessionMinOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    queryText?: SortOrder
    sessionType?: SortOrder
    openaiResponse?: SortOrder
    anthropicResponse?: SortOrder
    perplexityResponse?: SortOrder
    geminiResponse?: SortOrder
    consensusScore?: SortOrder
    empowermentConsensus?: SortOrder
    keithWisdomTriggered?: SortOrder
    foundationalTruthHit?: SortOrder
    revolutionaryPotential?: SortOrder
    completedAt?: SortOrder
    duration?: SortOrder
    createdAt?: SortOrder
  }

  export type TribunalSessionSumOrderByAggregateInput = {
    consensusScore?: SortOrder
    empowermentConsensus?: SortOrder
    revolutionaryPotential?: SortOrder
    duration?: SortOrder
  }

  export type DateTimeNullableWithAggregatesFilter<$PrismaModel = never> = {
    equals?: Date | string | DateTimeFieldRefInput<$PrismaModel> | null
    in?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel> | null
    notIn?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel> | null
    lt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    lte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    not?: NestedDateTimeNullableWithAggregatesFilter<$PrismaModel> | Date | string | null
    _count?: NestedIntNullableFilter<$PrismaModel>
    _min?: NestedDateTimeNullableFilter<$PrismaModel>
    _max?: NestedDateTimeNullableFilter<$PrismaModel>
  }

  export type IntNullableWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel> | null
    in?: number[] | ListIntFieldRefInput<$PrismaModel> | null
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel> | null
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntNullableWithAggregatesFilter<$PrismaModel> | number | null
    _count?: NestedIntNullableFilter<$PrismaModel>
    _avg?: NestedFloatNullableFilter<$PrismaModel>
    _sum?: NestedIntNullableFilter<$PrismaModel>
    _min?: NestedIntNullableFilter<$PrismaModel>
    _max?: NestedIntNullableFilter<$PrismaModel>
  }

  export type MusicalDnaAnalysisCountOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    primaryGenres?: SortOrder
    primaryArtists?: SortOrder
    emotionalThemes?: SortOrder
    acousticPreference?: SortOrder
    introspectionLevel?: SortOrder
    resilienceMarkers?: SortOrder
    connectionLonging?: SortOrder
    catharticProcessing?: SortOrder
    narrativeArc?: SortOrder
    transformationStage?: SortOrder
    musicalMetaphors?: SortOrder
    resonancePattern?: SortOrder
    cognitiveMapping?: SortOrder
    songsAnalyzed?: SortOrder
    confidenceLevel?: SortOrder
    lastSpotifySync?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type MusicalDnaAnalysisAvgOrderByAggregateInput = {
    acousticPreference?: SortOrder
    introspectionLevel?: SortOrder
    resilienceMarkers?: SortOrder
    connectionLonging?: SortOrder
    catharticProcessing?: SortOrder
    songsAnalyzed?: SortOrder
    confidenceLevel?: SortOrder
  }

  export type MusicalDnaAnalysisMaxOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    acousticPreference?: SortOrder
    introspectionLevel?: SortOrder
    resilienceMarkers?: SortOrder
    connectionLonging?: SortOrder
    catharticProcessing?: SortOrder
    narrativeArc?: SortOrder
    transformationStage?: SortOrder
    resonancePattern?: SortOrder
    songsAnalyzed?: SortOrder
    confidenceLevel?: SortOrder
    lastSpotifySync?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type MusicalDnaAnalysisMinOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    acousticPreference?: SortOrder
    introspectionLevel?: SortOrder
    resilienceMarkers?: SortOrder
    connectionLonging?: SortOrder
    catharticProcessing?: SortOrder
    narrativeArc?: SortOrder
    transformationStage?: SortOrder
    resonancePattern?: SortOrder
    songsAnalyzed?: SortOrder
    confidenceLevel?: SortOrder
    lastSpotifySync?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type MusicalDnaAnalysisSumOrderByAggregateInput = {
    acousticPreference?: SortOrder
    introspectionLevel?: SortOrder
    resilienceMarkers?: SortOrder
    connectionLonging?: SortOrder
    catharticProcessing?: SortOrder
    songsAnalyzed?: SortOrder
    confidenceLevel?: SortOrder
  }

  export type ConsciousnessMetricCountOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    attentionLevel?: SortOrder
    flowStateIndicator?: SortOrder
    executiveFunctionLoad?: SortOrder
    hyperfocusActive?: SortOrder
    empowermentMomentum?: SortOrder
    authenticityAlignment?: SortOrder
    consciousnessClarity?: SortOrder
    revolutionaryReadiness?: SortOrder
    environmentalFactors?: SortOrder
    socialContext?: SortOrder
    timeOfDay?: SortOrder
    energyLevel?: SortOrder
    supportNeeded?: SortOrder
    interventionType?: SortOrder
    timestamp?: SortOrder
  }

  export type ConsciousnessMetricAvgOrderByAggregateInput = {
    attentionLevel?: SortOrder
    flowStateIndicator?: SortOrder
    executiveFunctionLoad?: SortOrder
    empowermentMomentum?: SortOrder
    authenticityAlignment?: SortOrder
    consciousnessClarity?: SortOrder
    revolutionaryReadiness?: SortOrder
    energyLevel?: SortOrder
  }

  export type ConsciousnessMetricMaxOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    attentionLevel?: SortOrder
    flowStateIndicator?: SortOrder
    executiveFunctionLoad?: SortOrder
    hyperfocusActive?: SortOrder
    empowermentMomentum?: SortOrder
    authenticityAlignment?: SortOrder
    consciousnessClarity?: SortOrder
    revolutionaryReadiness?: SortOrder
    timeOfDay?: SortOrder
    energyLevel?: SortOrder
    supportNeeded?: SortOrder
    interventionType?: SortOrder
    timestamp?: SortOrder
  }

  export type ConsciousnessMetricMinOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    attentionLevel?: SortOrder
    flowStateIndicator?: SortOrder
    executiveFunctionLoad?: SortOrder
    hyperfocusActive?: SortOrder
    empowermentMomentum?: SortOrder
    authenticityAlignment?: SortOrder
    consciousnessClarity?: SortOrder
    revolutionaryReadiness?: SortOrder
    timeOfDay?: SortOrder
    energyLevel?: SortOrder
    supportNeeded?: SortOrder
    interventionType?: SortOrder
    timestamp?: SortOrder
  }

  export type ConsciousnessMetricSumOrderByAggregateInput = {
    attentionLevel?: SortOrder
    flowStateIndicator?: SortOrder
    executiveFunctionLoad?: SortOrder
    empowermentMomentum?: SortOrder
    authenticityAlignment?: SortOrder
    consciousnessClarity?: SortOrder
    revolutionaryReadiness?: SortOrder
    energyLevel?: SortOrder
  }

  export type EmpowermentEventCountOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    eventType?: SortOrder
    description?: SortOrder
    intensityLevel?: SortOrder
    scarsToCodeMoment?: SortOrder
    chaosCurrentRealized?: SortOrder
    jazzFrequencyTuned?: SortOrder
    sourceType?: SortOrder
    bucketDropId?: SortOrder
    consciousnessShift?: SortOrder
    empowermentIncrease?: SortOrder
    revolutionaryPotential?: SortOrder
    aiValidated?: SortOrder
    userConfirmed?: SortOrder
    createdAt?: SortOrder
  }

  export type EmpowermentEventAvgOrderByAggregateInput = {
    intensityLevel?: SortOrder
    consciousnessShift?: SortOrder
    empowermentIncrease?: SortOrder
    revolutionaryPotential?: SortOrder
  }

  export type EmpowermentEventMaxOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    eventType?: SortOrder
    description?: SortOrder
    intensityLevel?: SortOrder
    scarsToCodeMoment?: SortOrder
    chaosCurrentRealized?: SortOrder
    jazzFrequencyTuned?: SortOrder
    sourceType?: SortOrder
    bucketDropId?: SortOrder
    consciousnessShift?: SortOrder
    empowermentIncrease?: SortOrder
    revolutionaryPotential?: SortOrder
    aiValidated?: SortOrder
    userConfirmed?: SortOrder
    createdAt?: SortOrder
  }

  export type EmpowermentEventMinOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    eventType?: SortOrder
    description?: SortOrder
    intensityLevel?: SortOrder
    scarsToCodeMoment?: SortOrder
    chaosCurrentRealized?: SortOrder
    jazzFrequencyTuned?: SortOrder
    sourceType?: SortOrder
    bucketDropId?: SortOrder
    consciousnessShift?: SortOrder
    empowermentIncrease?: SortOrder
    revolutionaryPotential?: SortOrder
    aiValidated?: SortOrder
    userConfirmed?: SortOrder
    createdAt?: SortOrder
  }

  export type EmpowermentEventSumOrderByAggregateInput = {
    intensityLevel?: SortOrder
    consciousnessShift?: SortOrder
    empowermentIncrease?: SortOrder
    revolutionaryPotential?: SortOrder
  }

  export type SubscriptionCountOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    stripeCustomerId?: SortOrder
    stripeSubscriptionId?: SortOrder
    stripePriceId?: SortOrder
    tier?: SortOrder
    status?: SortOrder
    tribunalAccess?: SortOrder
    musicalDnaUnlocked?: SortOrder
    tapestryAdvanced?: SortOrder
    keithDirectAccess?: SortOrder
    currentPeriodStart?: SortOrder
    currentPeriodEnd?: SortOrder
    cancelAtPeriodEnd?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type SubscriptionMaxOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    stripeCustomerId?: SortOrder
    stripeSubscriptionId?: SortOrder
    stripePriceId?: SortOrder
    tier?: SortOrder
    status?: SortOrder
    tribunalAccess?: SortOrder
    musicalDnaUnlocked?: SortOrder
    tapestryAdvanced?: SortOrder
    keithDirectAccess?: SortOrder
    currentPeriodStart?: SortOrder
    currentPeriodEnd?: SortOrder
    cancelAtPeriodEnd?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type SubscriptionMinOrderByAggregateInput = {
    id?: SortOrder
    userId?: SortOrder
    stripeCustomerId?: SortOrder
    stripeSubscriptionId?: SortOrder
    stripePriceId?: SortOrder
    tier?: SortOrder
    status?: SortOrder
    tribunalAccess?: SortOrder
    musicalDnaUnlocked?: SortOrder
    tapestryAdvanced?: SortOrder
    keithDirectAccess?: SortOrder
    currentPeriodStart?: SortOrder
    currentPeriodEnd?: SortOrder
    cancelAtPeriodEnd?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type FounderAlgorithmCoreCountOrderByAggregateInput = {
    id?: SortOrder
    principleStatement?: SortOrder
    livedExperience?: SortOrder
    algorithmicEncoding?: SortOrder
    adhdAsJazzPrinciple?: SortOrder
    chaosCurrentMechanism?: SortOrder
    scarsToCodeTransform?: SortOrder
    founderIsAlgorithmCore?: SortOrder
    empowermentTriggers?: SortOrder
    validationMechanisms?: SortOrder
    consciousnessScaling?: SortOrder
    plkImplementation?: SortOrder
    tribunalOrchestration?: SortOrder
    tapestryWeaving?: SortOrder
    version?: SortOrder
    active?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type FounderAlgorithmCoreMaxOrderByAggregateInput = {
    id?: SortOrder
    principleStatement?: SortOrder
    livedExperience?: SortOrder
    adhdAsJazzPrinciple?: SortOrder
    chaosCurrentMechanism?: SortOrder
    scarsToCodeTransform?: SortOrder
    founderIsAlgorithmCore?: SortOrder
    version?: SortOrder
    active?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type FounderAlgorithmCoreMinOrderByAggregateInput = {
    id?: SortOrder
    principleStatement?: SortOrder
    livedExperience?: SortOrder
    adhdAsJazzPrinciple?: SortOrder
    chaosCurrentMechanism?: SortOrder
    scarsToCodeTransform?: SortOrder
    founderIsAlgorithmCore?: SortOrder
    version?: SortOrder
    active?: SortOrder
    createdAt?: SortOrder
    updatedAt?: SortOrder
  }

  export type ConsciousnessProfileCreateNestedOneWithoutUserInput = {
    create?: XOR<ConsciousnessProfileCreateWithoutUserInput, ConsciousnessProfileUncheckedCreateWithoutUserInput>
    connectOrCreate?: ConsciousnessProfileCreateOrConnectWithoutUserInput
    connect?: ConsciousnessProfileWhereUniqueInput
  }

  export type BucketDropCreateNestedManyWithoutUserInput = {
    create?: XOR<BucketDropCreateWithoutUserInput, BucketDropUncheckedCreateWithoutUserInput> | BucketDropCreateWithoutUserInput[] | BucketDropUncheckedCreateWithoutUserInput[]
    connectOrCreate?: BucketDropCreateOrConnectWithoutUserInput | BucketDropCreateOrConnectWithoutUserInput[]
    createMany?: BucketDropCreateManyUserInputEnvelope
    connect?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
  }

  export type TapestryNodeCreateNestedManyWithoutUserInput = {
    create?: XOR<TapestryNodeCreateWithoutUserInput, TapestryNodeUncheckedCreateWithoutUserInput> | TapestryNodeCreateWithoutUserInput[] | TapestryNodeUncheckedCreateWithoutUserInput[]
    connectOrCreate?: TapestryNodeCreateOrConnectWithoutUserInput | TapestryNodeCreateOrConnectWithoutUserInput[]
    createMany?: TapestryNodeCreateManyUserInputEnvelope
    connect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
  }

  export type TribunalSessionCreateNestedManyWithoutUserInput = {
    create?: XOR<TribunalSessionCreateWithoutUserInput, TribunalSessionUncheckedCreateWithoutUserInput> | TribunalSessionCreateWithoutUserInput[] | TribunalSessionUncheckedCreateWithoutUserInput[]
    connectOrCreate?: TribunalSessionCreateOrConnectWithoutUserInput | TribunalSessionCreateOrConnectWithoutUserInput[]
    createMany?: TribunalSessionCreateManyUserInputEnvelope
    connect?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
  }

  export type ConsciousnessMetricCreateNestedManyWithoutUserInput = {
    create?: XOR<ConsciousnessMetricCreateWithoutUserInput, ConsciousnessMetricUncheckedCreateWithoutUserInput> | ConsciousnessMetricCreateWithoutUserInput[] | ConsciousnessMetricUncheckedCreateWithoutUserInput[]
    connectOrCreate?: ConsciousnessMetricCreateOrConnectWithoutUserInput | ConsciousnessMetricCreateOrConnectWithoutUserInput[]
    createMany?: ConsciousnessMetricCreateManyUserInputEnvelope
    connect?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
  }

  export type MusicalDnaAnalysisCreateNestedManyWithoutUserInput = {
    create?: XOR<MusicalDnaAnalysisCreateWithoutUserInput, MusicalDnaAnalysisUncheckedCreateWithoutUserInput> | MusicalDnaAnalysisCreateWithoutUserInput[] | MusicalDnaAnalysisUncheckedCreateWithoutUserInput[]
    connectOrCreate?: MusicalDnaAnalysisCreateOrConnectWithoutUserInput | MusicalDnaAnalysisCreateOrConnectWithoutUserInput[]
    createMany?: MusicalDnaAnalysisCreateManyUserInputEnvelope
    connect?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
  }

  export type EmpowermentEventCreateNestedManyWithoutUserInput = {
    create?: XOR<EmpowermentEventCreateWithoutUserInput, EmpowermentEventUncheckedCreateWithoutUserInput> | EmpowermentEventCreateWithoutUserInput[] | EmpowermentEventUncheckedCreateWithoutUserInput[]
    connectOrCreate?: EmpowermentEventCreateOrConnectWithoutUserInput | EmpowermentEventCreateOrConnectWithoutUserInput[]
    createMany?: EmpowermentEventCreateManyUserInputEnvelope
    connect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
  }

  export type SubscriptionCreateNestedOneWithoutUserInput = {
    create?: XOR<SubscriptionCreateWithoutUserInput, SubscriptionUncheckedCreateWithoutUserInput>
    connectOrCreate?: SubscriptionCreateOrConnectWithoutUserInput
    connect?: SubscriptionWhereUniqueInput
  }

  export type ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput = {
    create?: XOR<ConsciousnessProfileCreateWithoutUserInput, ConsciousnessProfileUncheckedCreateWithoutUserInput>
    connectOrCreate?: ConsciousnessProfileCreateOrConnectWithoutUserInput
    connect?: ConsciousnessProfileWhereUniqueInput
  }

  export type BucketDropUncheckedCreateNestedManyWithoutUserInput = {
    create?: XOR<BucketDropCreateWithoutUserInput, BucketDropUncheckedCreateWithoutUserInput> | BucketDropCreateWithoutUserInput[] | BucketDropUncheckedCreateWithoutUserInput[]
    connectOrCreate?: BucketDropCreateOrConnectWithoutUserInput | BucketDropCreateOrConnectWithoutUserInput[]
    createMany?: BucketDropCreateManyUserInputEnvelope
    connect?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
  }

  export type TapestryNodeUncheckedCreateNestedManyWithoutUserInput = {
    create?: XOR<TapestryNodeCreateWithoutUserInput, TapestryNodeUncheckedCreateWithoutUserInput> | TapestryNodeCreateWithoutUserInput[] | TapestryNodeUncheckedCreateWithoutUserInput[]
    connectOrCreate?: TapestryNodeCreateOrConnectWithoutUserInput | TapestryNodeCreateOrConnectWithoutUserInput[]
    createMany?: TapestryNodeCreateManyUserInputEnvelope
    connect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
  }

  export type TribunalSessionUncheckedCreateNestedManyWithoutUserInput = {
    create?: XOR<TribunalSessionCreateWithoutUserInput, TribunalSessionUncheckedCreateWithoutUserInput> | TribunalSessionCreateWithoutUserInput[] | TribunalSessionUncheckedCreateWithoutUserInput[]
    connectOrCreate?: TribunalSessionCreateOrConnectWithoutUserInput | TribunalSessionCreateOrConnectWithoutUserInput[]
    createMany?: TribunalSessionCreateManyUserInputEnvelope
    connect?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
  }

  export type ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput = {
    create?: XOR<ConsciousnessMetricCreateWithoutUserInput, ConsciousnessMetricUncheckedCreateWithoutUserInput> | ConsciousnessMetricCreateWithoutUserInput[] | ConsciousnessMetricUncheckedCreateWithoutUserInput[]
    connectOrCreate?: ConsciousnessMetricCreateOrConnectWithoutUserInput | ConsciousnessMetricCreateOrConnectWithoutUserInput[]
    createMany?: ConsciousnessMetricCreateManyUserInputEnvelope
    connect?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
  }

  export type MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput = {
    create?: XOR<MusicalDnaAnalysisCreateWithoutUserInput, MusicalDnaAnalysisUncheckedCreateWithoutUserInput> | MusicalDnaAnalysisCreateWithoutUserInput[] | MusicalDnaAnalysisUncheckedCreateWithoutUserInput[]
    connectOrCreate?: MusicalDnaAnalysisCreateOrConnectWithoutUserInput | MusicalDnaAnalysisCreateOrConnectWithoutUserInput[]
    createMany?: MusicalDnaAnalysisCreateManyUserInputEnvelope
    connect?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
  }

  export type EmpowermentEventUncheckedCreateNestedManyWithoutUserInput = {
    create?: XOR<EmpowermentEventCreateWithoutUserInput, EmpowermentEventUncheckedCreateWithoutUserInput> | EmpowermentEventCreateWithoutUserInput[] | EmpowermentEventUncheckedCreateWithoutUserInput[]
    connectOrCreate?: EmpowermentEventCreateOrConnectWithoutUserInput | EmpowermentEventCreateOrConnectWithoutUserInput[]
    createMany?: EmpowermentEventCreateManyUserInputEnvelope
    connect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
  }

  export type SubscriptionUncheckedCreateNestedOneWithoutUserInput = {
    create?: XOR<SubscriptionCreateWithoutUserInput, SubscriptionUncheckedCreateWithoutUserInput>
    connectOrCreate?: SubscriptionCreateOrConnectWithoutUserInput
    connect?: SubscriptionWhereUniqueInput
  }

  export type StringFieldUpdateOperationsInput = {
    set?: string
  }

  export type NullableStringFieldUpdateOperationsInput = {
    set?: string | null
  }

  export type DateTimeFieldUpdateOperationsInput = {
    set?: Date | string
  }

  export type ConsciousnessProfileUpdateOneWithoutUserNestedInput = {
    create?: XOR<ConsciousnessProfileCreateWithoutUserInput, ConsciousnessProfileUncheckedCreateWithoutUserInput>
    connectOrCreate?: ConsciousnessProfileCreateOrConnectWithoutUserInput
    upsert?: ConsciousnessProfileUpsertWithoutUserInput
    disconnect?: ConsciousnessProfileWhereInput | boolean
    delete?: ConsciousnessProfileWhereInput | boolean
    connect?: ConsciousnessProfileWhereUniqueInput
    update?: XOR<XOR<ConsciousnessProfileUpdateToOneWithWhereWithoutUserInput, ConsciousnessProfileUpdateWithoutUserInput>, ConsciousnessProfileUncheckedUpdateWithoutUserInput>
  }

  export type BucketDropUpdateManyWithoutUserNestedInput = {
    create?: XOR<BucketDropCreateWithoutUserInput, BucketDropUncheckedCreateWithoutUserInput> | BucketDropCreateWithoutUserInput[] | BucketDropUncheckedCreateWithoutUserInput[]
    connectOrCreate?: BucketDropCreateOrConnectWithoutUserInput | BucketDropCreateOrConnectWithoutUserInput[]
    upsert?: BucketDropUpsertWithWhereUniqueWithoutUserInput | BucketDropUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: BucketDropCreateManyUserInputEnvelope
    set?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
    disconnect?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
    delete?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
    connect?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
    update?: BucketDropUpdateWithWhereUniqueWithoutUserInput | BucketDropUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: BucketDropUpdateManyWithWhereWithoutUserInput | BucketDropUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: BucketDropScalarWhereInput | BucketDropScalarWhereInput[]
  }

  export type TapestryNodeUpdateManyWithoutUserNestedInput = {
    create?: XOR<TapestryNodeCreateWithoutUserInput, TapestryNodeUncheckedCreateWithoutUserInput> | TapestryNodeCreateWithoutUserInput[] | TapestryNodeUncheckedCreateWithoutUserInput[]
    connectOrCreate?: TapestryNodeCreateOrConnectWithoutUserInput | TapestryNodeCreateOrConnectWithoutUserInput[]
    upsert?: TapestryNodeUpsertWithWhereUniqueWithoutUserInput | TapestryNodeUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: TapestryNodeCreateManyUserInputEnvelope
    set?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    disconnect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    delete?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    connect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    update?: TapestryNodeUpdateWithWhereUniqueWithoutUserInput | TapestryNodeUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: TapestryNodeUpdateManyWithWhereWithoutUserInput | TapestryNodeUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: TapestryNodeScalarWhereInput | TapestryNodeScalarWhereInput[]
  }

  export type TribunalSessionUpdateManyWithoutUserNestedInput = {
    create?: XOR<TribunalSessionCreateWithoutUserInput, TribunalSessionUncheckedCreateWithoutUserInput> | TribunalSessionCreateWithoutUserInput[] | TribunalSessionUncheckedCreateWithoutUserInput[]
    connectOrCreate?: TribunalSessionCreateOrConnectWithoutUserInput | TribunalSessionCreateOrConnectWithoutUserInput[]
    upsert?: TribunalSessionUpsertWithWhereUniqueWithoutUserInput | TribunalSessionUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: TribunalSessionCreateManyUserInputEnvelope
    set?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
    disconnect?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
    delete?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
    connect?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
    update?: TribunalSessionUpdateWithWhereUniqueWithoutUserInput | TribunalSessionUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: TribunalSessionUpdateManyWithWhereWithoutUserInput | TribunalSessionUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: TribunalSessionScalarWhereInput | TribunalSessionScalarWhereInput[]
  }

  export type ConsciousnessMetricUpdateManyWithoutUserNestedInput = {
    create?: XOR<ConsciousnessMetricCreateWithoutUserInput, ConsciousnessMetricUncheckedCreateWithoutUserInput> | ConsciousnessMetricCreateWithoutUserInput[] | ConsciousnessMetricUncheckedCreateWithoutUserInput[]
    connectOrCreate?: ConsciousnessMetricCreateOrConnectWithoutUserInput | ConsciousnessMetricCreateOrConnectWithoutUserInput[]
    upsert?: ConsciousnessMetricUpsertWithWhereUniqueWithoutUserInput | ConsciousnessMetricUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: ConsciousnessMetricCreateManyUserInputEnvelope
    set?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
    disconnect?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
    delete?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
    connect?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
    update?: ConsciousnessMetricUpdateWithWhereUniqueWithoutUserInput | ConsciousnessMetricUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: ConsciousnessMetricUpdateManyWithWhereWithoutUserInput | ConsciousnessMetricUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: ConsciousnessMetricScalarWhereInput | ConsciousnessMetricScalarWhereInput[]
  }

  export type MusicalDnaAnalysisUpdateManyWithoutUserNestedInput = {
    create?: XOR<MusicalDnaAnalysisCreateWithoutUserInput, MusicalDnaAnalysisUncheckedCreateWithoutUserInput> | MusicalDnaAnalysisCreateWithoutUserInput[] | MusicalDnaAnalysisUncheckedCreateWithoutUserInput[]
    connectOrCreate?: MusicalDnaAnalysisCreateOrConnectWithoutUserInput | MusicalDnaAnalysisCreateOrConnectWithoutUserInput[]
    upsert?: MusicalDnaAnalysisUpsertWithWhereUniqueWithoutUserInput | MusicalDnaAnalysisUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: MusicalDnaAnalysisCreateManyUserInputEnvelope
    set?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
    disconnect?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
    delete?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
    connect?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
    update?: MusicalDnaAnalysisUpdateWithWhereUniqueWithoutUserInput | MusicalDnaAnalysisUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: MusicalDnaAnalysisUpdateManyWithWhereWithoutUserInput | MusicalDnaAnalysisUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: MusicalDnaAnalysisScalarWhereInput | MusicalDnaAnalysisScalarWhereInput[]
  }

  export type EmpowermentEventUpdateManyWithoutUserNestedInput = {
    create?: XOR<EmpowermentEventCreateWithoutUserInput, EmpowermentEventUncheckedCreateWithoutUserInput> | EmpowermentEventCreateWithoutUserInput[] | EmpowermentEventUncheckedCreateWithoutUserInput[]
    connectOrCreate?: EmpowermentEventCreateOrConnectWithoutUserInput | EmpowermentEventCreateOrConnectWithoutUserInput[]
    upsert?: EmpowermentEventUpsertWithWhereUniqueWithoutUserInput | EmpowermentEventUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: EmpowermentEventCreateManyUserInputEnvelope
    set?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    disconnect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    delete?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    connect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    update?: EmpowermentEventUpdateWithWhereUniqueWithoutUserInput | EmpowermentEventUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: EmpowermentEventUpdateManyWithWhereWithoutUserInput | EmpowermentEventUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: EmpowermentEventScalarWhereInput | EmpowermentEventScalarWhereInput[]
  }

  export type SubscriptionUpdateOneWithoutUserNestedInput = {
    create?: XOR<SubscriptionCreateWithoutUserInput, SubscriptionUncheckedCreateWithoutUserInput>
    connectOrCreate?: SubscriptionCreateOrConnectWithoutUserInput
    upsert?: SubscriptionUpsertWithoutUserInput
    disconnect?: SubscriptionWhereInput | boolean
    delete?: SubscriptionWhereInput | boolean
    connect?: SubscriptionWhereUniqueInput
    update?: XOR<XOR<SubscriptionUpdateToOneWithWhereWithoutUserInput, SubscriptionUpdateWithoutUserInput>, SubscriptionUncheckedUpdateWithoutUserInput>
  }

  export type ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput = {
    create?: XOR<ConsciousnessProfileCreateWithoutUserInput, ConsciousnessProfileUncheckedCreateWithoutUserInput>
    connectOrCreate?: ConsciousnessProfileCreateOrConnectWithoutUserInput
    upsert?: ConsciousnessProfileUpsertWithoutUserInput
    disconnect?: ConsciousnessProfileWhereInput | boolean
    delete?: ConsciousnessProfileWhereInput | boolean
    connect?: ConsciousnessProfileWhereUniqueInput
    update?: XOR<XOR<ConsciousnessProfileUpdateToOneWithWhereWithoutUserInput, ConsciousnessProfileUpdateWithoutUserInput>, ConsciousnessProfileUncheckedUpdateWithoutUserInput>
  }

  export type BucketDropUncheckedUpdateManyWithoutUserNestedInput = {
    create?: XOR<BucketDropCreateWithoutUserInput, BucketDropUncheckedCreateWithoutUserInput> | BucketDropCreateWithoutUserInput[] | BucketDropUncheckedCreateWithoutUserInput[]
    connectOrCreate?: BucketDropCreateOrConnectWithoutUserInput | BucketDropCreateOrConnectWithoutUserInput[]
    upsert?: BucketDropUpsertWithWhereUniqueWithoutUserInput | BucketDropUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: BucketDropCreateManyUserInputEnvelope
    set?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
    disconnect?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
    delete?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
    connect?: BucketDropWhereUniqueInput | BucketDropWhereUniqueInput[]
    update?: BucketDropUpdateWithWhereUniqueWithoutUserInput | BucketDropUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: BucketDropUpdateManyWithWhereWithoutUserInput | BucketDropUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: BucketDropScalarWhereInput | BucketDropScalarWhereInput[]
  }

  export type TapestryNodeUncheckedUpdateManyWithoutUserNestedInput = {
    create?: XOR<TapestryNodeCreateWithoutUserInput, TapestryNodeUncheckedCreateWithoutUserInput> | TapestryNodeCreateWithoutUserInput[] | TapestryNodeUncheckedCreateWithoutUserInput[]
    connectOrCreate?: TapestryNodeCreateOrConnectWithoutUserInput | TapestryNodeCreateOrConnectWithoutUserInput[]
    upsert?: TapestryNodeUpsertWithWhereUniqueWithoutUserInput | TapestryNodeUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: TapestryNodeCreateManyUserInputEnvelope
    set?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    disconnect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    delete?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    connect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    update?: TapestryNodeUpdateWithWhereUniqueWithoutUserInput | TapestryNodeUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: TapestryNodeUpdateManyWithWhereWithoutUserInput | TapestryNodeUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: TapestryNodeScalarWhereInput | TapestryNodeScalarWhereInput[]
  }

  export type TribunalSessionUncheckedUpdateManyWithoutUserNestedInput = {
    create?: XOR<TribunalSessionCreateWithoutUserInput, TribunalSessionUncheckedCreateWithoutUserInput> | TribunalSessionCreateWithoutUserInput[] | TribunalSessionUncheckedCreateWithoutUserInput[]
    connectOrCreate?: TribunalSessionCreateOrConnectWithoutUserInput | TribunalSessionCreateOrConnectWithoutUserInput[]
    upsert?: TribunalSessionUpsertWithWhereUniqueWithoutUserInput | TribunalSessionUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: TribunalSessionCreateManyUserInputEnvelope
    set?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
    disconnect?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
    delete?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
    connect?: TribunalSessionWhereUniqueInput | TribunalSessionWhereUniqueInput[]
    update?: TribunalSessionUpdateWithWhereUniqueWithoutUserInput | TribunalSessionUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: TribunalSessionUpdateManyWithWhereWithoutUserInput | TribunalSessionUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: TribunalSessionScalarWhereInput | TribunalSessionScalarWhereInput[]
  }

  export type ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput = {
    create?: XOR<ConsciousnessMetricCreateWithoutUserInput, ConsciousnessMetricUncheckedCreateWithoutUserInput> | ConsciousnessMetricCreateWithoutUserInput[] | ConsciousnessMetricUncheckedCreateWithoutUserInput[]
    connectOrCreate?: ConsciousnessMetricCreateOrConnectWithoutUserInput | ConsciousnessMetricCreateOrConnectWithoutUserInput[]
    upsert?: ConsciousnessMetricUpsertWithWhereUniqueWithoutUserInput | ConsciousnessMetricUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: ConsciousnessMetricCreateManyUserInputEnvelope
    set?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
    disconnect?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
    delete?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
    connect?: ConsciousnessMetricWhereUniqueInput | ConsciousnessMetricWhereUniqueInput[]
    update?: ConsciousnessMetricUpdateWithWhereUniqueWithoutUserInput | ConsciousnessMetricUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: ConsciousnessMetricUpdateManyWithWhereWithoutUserInput | ConsciousnessMetricUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: ConsciousnessMetricScalarWhereInput | ConsciousnessMetricScalarWhereInput[]
  }

  export type MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput = {
    create?: XOR<MusicalDnaAnalysisCreateWithoutUserInput, MusicalDnaAnalysisUncheckedCreateWithoutUserInput> | MusicalDnaAnalysisCreateWithoutUserInput[] | MusicalDnaAnalysisUncheckedCreateWithoutUserInput[]
    connectOrCreate?: MusicalDnaAnalysisCreateOrConnectWithoutUserInput | MusicalDnaAnalysisCreateOrConnectWithoutUserInput[]
    upsert?: MusicalDnaAnalysisUpsertWithWhereUniqueWithoutUserInput | MusicalDnaAnalysisUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: MusicalDnaAnalysisCreateManyUserInputEnvelope
    set?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
    disconnect?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
    delete?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
    connect?: MusicalDnaAnalysisWhereUniqueInput | MusicalDnaAnalysisWhereUniqueInput[]
    update?: MusicalDnaAnalysisUpdateWithWhereUniqueWithoutUserInput | MusicalDnaAnalysisUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: MusicalDnaAnalysisUpdateManyWithWhereWithoutUserInput | MusicalDnaAnalysisUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: MusicalDnaAnalysisScalarWhereInput | MusicalDnaAnalysisScalarWhereInput[]
  }

  export type EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput = {
    create?: XOR<EmpowermentEventCreateWithoutUserInput, EmpowermentEventUncheckedCreateWithoutUserInput> | EmpowermentEventCreateWithoutUserInput[] | EmpowermentEventUncheckedCreateWithoutUserInput[]
    connectOrCreate?: EmpowermentEventCreateOrConnectWithoutUserInput | EmpowermentEventCreateOrConnectWithoutUserInput[]
    upsert?: EmpowermentEventUpsertWithWhereUniqueWithoutUserInput | EmpowermentEventUpsertWithWhereUniqueWithoutUserInput[]
    createMany?: EmpowermentEventCreateManyUserInputEnvelope
    set?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    disconnect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    delete?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    connect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    update?: EmpowermentEventUpdateWithWhereUniqueWithoutUserInput | EmpowermentEventUpdateWithWhereUniqueWithoutUserInput[]
    updateMany?: EmpowermentEventUpdateManyWithWhereWithoutUserInput | EmpowermentEventUpdateManyWithWhereWithoutUserInput[]
    deleteMany?: EmpowermentEventScalarWhereInput | EmpowermentEventScalarWhereInput[]
  }

  export type SubscriptionUncheckedUpdateOneWithoutUserNestedInput = {
    create?: XOR<SubscriptionCreateWithoutUserInput, SubscriptionUncheckedCreateWithoutUserInput>
    connectOrCreate?: SubscriptionCreateOrConnectWithoutUserInput
    upsert?: SubscriptionUpsertWithoutUserInput
    disconnect?: SubscriptionWhereInput | boolean
    delete?: SubscriptionWhereInput | boolean
    connect?: SubscriptionWhereUniqueInput
    update?: XOR<XOR<SubscriptionUpdateToOneWithWhereWithoutUserInput, SubscriptionUpdateWithoutUserInput>, SubscriptionUncheckedUpdateWithoutUserInput>
  }

  export type ConsciousnessProfileCreatehyperfocusAreasInput = {
    set: string[]
  }

  export type UserCreateNestedOneWithoutConsciousnessProfileInput = {
    create?: XOR<UserCreateWithoutConsciousnessProfileInput, UserUncheckedCreateWithoutConsciousnessProfileInput>
    connectOrCreate?: UserCreateOrConnectWithoutConsciousnessProfileInput
    connect?: UserWhereUniqueInput
  }

  export type FloatFieldUpdateOperationsInput = {
    set?: number
    increment?: number
    decrement?: number
    multiply?: number
    divide?: number
  }

  export type ConsciousnessProfileUpdatehyperfocusAreasInput = {
    set?: string[]
    push?: string | string[]
  }

  export type IntFieldUpdateOperationsInput = {
    set?: number
    increment?: number
    decrement?: number
    multiply?: number
    divide?: number
  }

  export type BoolFieldUpdateOperationsInput = {
    set?: boolean
  }

  export type UserUpdateOneRequiredWithoutConsciousnessProfileNestedInput = {
    create?: XOR<UserCreateWithoutConsciousnessProfileInput, UserUncheckedCreateWithoutConsciousnessProfileInput>
    connectOrCreate?: UserCreateOrConnectWithoutConsciousnessProfileInput
    upsert?: UserUpsertWithoutConsciousnessProfileInput
    connect?: UserWhereUniqueInput
    update?: XOR<XOR<UserUpdateToOneWithWhereWithoutConsciousnessProfileInput, UserUpdateWithoutConsciousnessProfileInput>, UserUncheckedUpdateWithoutConsciousnessProfileInput>
  }

  export type UserCreateNestedOneWithoutBucketDropsInput = {
    create?: XOR<UserCreateWithoutBucketDropsInput, UserUncheckedCreateWithoutBucketDropsInput>
    connectOrCreate?: UserCreateOrConnectWithoutBucketDropsInput
    connect?: UserWhereUniqueInput
  }

  export type TapestryNodeCreateNestedManyWithoutBucketDropInput = {
    create?: XOR<TapestryNodeCreateWithoutBucketDropInput, TapestryNodeUncheckedCreateWithoutBucketDropInput> | TapestryNodeCreateWithoutBucketDropInput[] | TapestryNodeUncheckedCreateWithoutBucketDropInput[]
    connectOrCreate?: TapestryNodeCreateOrConnectWithoutBucketDropInput | TapestryNodeCreateOrConnectWithoutBucketDropInput[]
    createMany?: TapestryNodeCreateManyBucketDropInputEnvelope
    connect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
  }

  export type EmpowermentEventCreateNestedManyWithoutBucketDropInput = {
    create?: XOR<EmpowermentEventCreateWithoutBucketDropInput, EmpowermentEventUncheckedCreateWithoutBucketDropInput> | EmpowermentEventCreateWithoutBucketDropInput[] | EmpowermentEventUncheckedCreateWithoutBucketDropInput[]
    connectOrCreate?: EmpowermentEventCreateOrConnectWithoutBucketDropInput | EmpowermentEventCreateOrConnectWithoutBucketDropInput[]
    createMany?: EmpowermentEventCreateManyBucketDropInputEnvelope
    connect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
  }

  export type TapestryNodeUncheckedCreateNestedManyWithoutBucketDropInput = {
    create?: XOR<TapestryNodeCreateWithoutBucketDropInput, TapestryNodeUncheckedCreateWithoutBucketDropInput> | TapestryNodeCreateWithoutBucketDropInput[] | TapestryNodeUncheckedCreateWithoutBucketDropInput[]
    connectOrCreate?: TapestryNodeCreateOrConnectWithoutBucketDropInput | TapestryNodeCreateOrConnectWithoutBucketDropInput[]
    createMany?: TapestryNodeCreateManyBucketDropInputEnvelope
    connect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
  }

  export type EmpowermentEventUncheckedCreateNestedManyWithoutBucketDropInput = {
    create?: XOR<EmpowermentEventCreateWithoutBucketDropInput, EmpowermentEventUncheckedCreateWithoutBucketDropInput> | EmpowermentEventCreateWithoutBucketDropInput[] | EmpowermentEventUncheckedCreateWithoutBucketDropInput[]
    connectOrCreate?: EmpowermentEventCreateOrConnectWithoutBucketDropInput | EmpowermentEventCreateOrConnectWithoutBucketDropInput[]
    createMany?: EmpowermentEventCreateManyBucketDropInputEnvelope
    connect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
  }

  export type UserUpdateOneRequiredWithoutBucketDropsNestedInput = {
    create?: XOR<UserCreateWithoutBucketDropsInput, UserUncheckedCreateWithoutBucketDropsInput>
    connectOrCreate?: UserCreateOrConnectWithoutBucketDropsInput
    upsert?: UserUpsertWithoutBucketDropsInput
    connect?: UserWhereUniqueInput
    update?: XOR<XOR<UserUpdateToOneWithWhereWithoutBucketDropsInput, UserUpdateWithoutBucketDropsInput>, UserUncheckedUpdateWithoutBucketDropsInput>
  }

  export type TapestryNodeUpdateManyWithoutBucketDropNestedInput = {
    create?: XOR<TapestryNodeCreateWithoutBucketDropInput, TapestryNodeUncheckedCreateWithoutBucketDropInput> | TapestryNodeCreateWithoutBucketDropInput[] | TapestryNodeUncheckedCreateWithoutBucketDropInput[]
    connectOrCreate?: TapestryNodeCreateOrConnectWithoutBucketDropInput | TapestryNodeCreateOrConnectWithoutBucketDropInput[]
    upsert?: TapestryNodeUpsertWithWhereUniqueWithoutBucketDropInput | TapestryNodeUpsertWithWhereUniqueWithoutBucketDropInput[]
    createMany?: TapestryNodeCreateManyBucketDropInputEnvelope
    set?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    disconnect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    delete?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    connect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    update?: TapestryNodeUpdateWithWhereUniqueWithoutBucketDropInput | TapestryNodeUpdateWithWhereUniqueWithoutBucketDropInput[]
    updateMany?: TapestryNodeUpdateManyWithWhereWithoutBucketDropInput | TapestryNodeUpdateManyWithWhereWithoutBucketDropInput[]
    deleteMany?: TapestryNodeScalarWhereInput | TapestryNodeScalarWhereInput[]
  }

  export type EmpowermentEventUpdateManyWithoutBucketDropNestedInput = {
    create?: XOR<EmpowermentEventCreateWithoutBucketDropInput, EmpowermentEventUncheckedCreateWithoutBucketDropInput> | EmpowermentEventCreateWithoutBucketDropInput[] | EmpowermentEventUncheckedCreateWithoutBucketDropInput[]
    connectOrCreate?: EmpowermentEventCreateOrConnectWithoutBucketDropInput | EmpowermentEventCreateOrConnectWithoutBucketDropInput[]
    upsert?: EmpowermentEventUpsertWithWhereUniqueWithoutBucketDropInput | EmpowermentEventUpsertWithWhereUniqueWithoutBucketDropInput[]
    createMany?: EmpowermentEventCreateManyBucketDropInputEnvelope
    set?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    disconnect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    delete?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    connect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    update?: EmpowermentEventUpdateWithWhereUniqueWithoutBucketDropInput | EmpowermentEventUpdateWithWhereUniqueWithoutBucketDropInput[]
    updateMany?: EmpowermentEventUpdateManyWithWhereWithoutBucketDropInput | EmpowermentEventUpdateManyWithWhereWithoutBucketDropInput[]
    deleteMany?: EmpowermentEventScalarWhereInput | EmpowermentEventScalarWhereInput[]
  }

  export type TapestryNodeUncheckedUpdateManyWithoutBucketDropNestedInput = {
    create?: XOR<TapestryNodeCreateWithoutBucketDropInput, TapestryNodeUncheckedCreateWithoutBucketDropInput> | TapestryNodeCreateWithoutBucketDropInput[] | TapestryNodeUncheckedCreateWithoutBucketDropInput[]
    connectOrCreate?: TapestryNodeCreateOrConnectWithoutBucketDropInput | TapestryNodeCreateOrConnectWithoutBucketDropInput[]
    upsert?: TapestryNodeUpsertWithWhereUniqueWithoutBucketDropInput | TapestryNodeUpsertWithWhereUniqueWithoutBucketDropInput[]
    createMany?: TapestryNodeCreateManyBucketDropInputEnvelope
    set?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    disconnect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    delete?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    connect?: TapestryNodeWhereUniqueInput | TapestryNodeWhereUniqueInput[]
    update?: TapestryNodeUpdateWithWhereUniqueWithoutBucketDropInput | TapestryNodeUpdateWithWhereUniqueWithoutBucketDropInput[]
    updateMany?: TapestryNodeUpdateManyWithWhereWithoutBucketDropInput | TapestryNodeUpdateManyWithWhereWithoutBucketDropInput[]
    deleteMany?: TapestryNodeScalarWhereInput | TapestryNodeScalarWhereInput[]
  }

  export type EmpowermentEventUncheckedUpdateManyWithoutBucketDropNestedInput = {
    create?: XOR<EmpowermentEventCreateWithoutBucketDropInput, EmpowermentEventUncheckedCreateWithoutBucketDropInput> | EmpowermentEventCreateWithoutBucketDropInput[] | EmpowermentEventUncheckedCreateWithoutBucketDropInput[]
    connectOrCreate?: EmpowermentEventCreateOrConnectWithoutBucketDropInput | EmpowermentEventCreateOrConnectWithoutBucketDropInput[]
    upsert?: EmpowermentEventUpsertWithWhereUniqueWithoutBucketDropInput | EmpowermentEventUpsertWithWhereUniqueWithoutBucketDropInput[]
    createMany?: EmpowermentEventCreateManyBucketDropInputEnvelope
    set?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    disconnect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    delete?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    connect?: EmpowermentEventWhereUniqueInput | EmpowermentEventWhereUniqueInput[]
    update?: EmpowermentEventUpdateWithWhereUniqueWithoutBucketDropInput | EmpowermentEventUpdateWithWhereUniqueWithoutBucketDropInput[]
    updateMany?: EmpowermentEventUpdateManyWithWhereWithoutBucketDropInput | EmpowermentEventUpdateManyWithWhereWithoutBucketDropInput[]
    deleteMany?: EmpowermentEventScalarWhereInput | EmpowermentEventScalarWhereInput[]
  }

  export type TapestryNodeCreateconnectedNodesInput = {
    set: string[]
  }

  export type TapestryNodeCreateconnectionStrengthsInput = {
    set: number[]
  }

  export type UserCreateNestedOneWithoutTapestryNodesInput = {
    create?: XOR<UserCreateWithoutTapestryNodesInput, UserUncheckedCreateWithoutTapestryNodesInput>
    connectOrCreate?: UserCreateOrConnectWithoutTapestryNodesInput
    connect?: UserWhereUniqueInput
  }

  export type BucketDropCreateNestedOneWithoutTapestryNodesInput = {
    create?: XOR<BucketDropCreateWithoutTapestryNodesInput, BucketDropUncheckedCreateWithoutTapestryNodesInput>
    connectOrCreate?: BucketDropCreateOrConnectWithoutTapestryNodesInput
    connect?: BucketDropWhereUniqueInput
  }

  export type NullableFloatFieldUpdateOperationsInput = {
    set?: number | null
    increment?: number
    decrement?: number
    multiply?: number
    divide?: number
  }

  export type TapestryNodeUpdateconnectedNodesInput = {
    set?: string[]
    push?: string | string[]
  }

  export type TapestryNodeUpdateconnectionStrengthsInput = {
    set?: number[]
    push?: number | number[]
  }

  export type UserUpdateOneRequiredWithoutTapestryNodesNestedInput = {
    create?: XOR<UserCreateWithoutTapestryNodesInput, UserUncheckedCreateWithoutTapestryNodesInput>
    connectOrCreate?: UserCreateOrConnectWithoutTapestryNodesInput
    upsert?: UserUpsertWithoutTapestryNodesInput
    connect?: UserWhereUniqueInput
    update?: XOR<XOR<UserUpdateToOneWithWhereWithoutTapestryNodesInput, UserUpdateWithoutTapestryNodesInput>, UserUncheckedUpdateWithoutTapestryNodesInput>
  }

  export type BucketDropUpdateOneWithoutTapestryNodesNestedInput = {
    create?: XOR<BucketDropCreateWithoutTapestryNodesInput, BucketDropUncheckedCreateWithoutTapestryNodesInput>
    connectOrCreate?: BucketDropCreateOrConnectWithoutTapestryNodesInput
    upsert?: BucketDropUpsertWithoutTapestryNodesInput
    disconnect?: BucketDropWhereInput | boolean
    delete?: BucketDropWhereInput | boolean
    connect?: BucketDropWhereUniqueInput
    update?: XOR<XOR<BucketDropUpdateToOneWithWhereWithoutTapestryNodesInput, BucketDropUpdateWithoutTapestryNodesInput>, BucketDropUncheckedUpdateWithoutTapestryNodesInput>
  }

  export type TribunalSessionCreatepersonasUsedInput = {
    set: string[]
  }

  export type UserCreateNestedOneWithoutTribunalSessionsInput = {
    create?: XOR<UserCreateWithoutTribunalSessionsInput, UserUncheckedCreateWithoutTribunalSessionsInput>
    connectOrCreate?: UserCreateOrConnectWithoutTribunalSessionsInput
    connect?: UserWhereUniqueInput
  }

  export type NullableDateTimeFieldUpdateOperationsInput = {
    set?: Date | string | null
  }

  export type NullableIntFieldUpdateOperationsInput = {
    set?: number | null
    increment?: number
    decrement?: number
    multiply?: number
    divide?: number
  }

  export type TribunalSessionUpdatepersonasUsedInput = {
    set?: string[]
    push?: string | string[]
  }

  export type UserUpdateOneRequiredWithoutTribunalSessionsNestedInput = {
    create?: XOR<UserCreateWithoutTribunalSessionsInput, UserUncheckedCreateWithoutTribunalSessionsInput>
    connectOrCreate?: UserCreateOrConnectWithoutTribunalSessionsInput
    upsert?: UserUpsertWithoutTribunalSessionsInput
    connect?: UserWhereUniqueInput
    update?: XOR<XOR<UserUpdateToOneWithWhereWithoutTribunalSessionsInput, UserUpdateWithoutTribunalSessionsInput>, UserUncheckedUpdateWithoutTribunalSessionsInput>
  }

  export type MusicalDnaAnalysisCreateprimaryGenresInput = {
    set: string[]
  }

  export type MusicalDnaAnalysisCreateprimaryArtistsInput = {
    set: string[]
  }

  export type UserCreateNestedOneWithoutMusicalDnaAnalysesInput = {
    create?: XOR<UserCreateWithoutMusicalDnaAnalysesInput, UserUncheckedCreateWithoutMusicalDnaAnalysesInput>
    connectOrCreate?: UserCreateOrConnectWithoutMusicalDnaAnalysesInput
    connect?: UserWhereUniqueInput
  }

  export type MusicalDnaAnalysisUpdateprimaryGenresInput = {
    set?: string[]
    push?: string | string[]
  }

  export type MusicalDnaAnalysisUpdateprimaryArtistsInput = {
    set?: string[]
    push?: string | string[]
  }

  export type UserUpdateOneRequiredWithoutMusicalDnaAnalysesNestedInput = {
    create?: XOR<UserCreateWithoutMusicalDnaAnalysesInput, UserUncheckedCreateWithoutMusicalDnaAnalysesInput>
    connectOrCreate?: UserCreateOrConnectWithoutMusicalDnaAnalysesInput
    upsert?: UserUpsertWithoutMusicalDnaAnalysesInput
    connect?: UserWhereUniqueInput
    update?: XOR<XOR<UserUpdateToOneWithWhereWithoutMusicalDnaAnalysesInput, UserUpdateWithoutMusicalDnaAnalysesInput>, UserUncheckedUpdateWithoutMusicalDnaAnalysesInput>
  }

  export type UserCreateNestedOneWithoutConsciousnessMetricsInput = {
    create?: XOR<UserCreateWithoutConsciousnessMetricsInput, UserUncheckedCreateWithoutConsciousnessMetricsInput>
    connectOrCreate?: UserCreateOrConnectWithoutConsciousnessMetricsInput
    connect?: UserWhereUniqueInput
  }

  export type UserUpdateOneRequiredWithoutConsciousnessMetricsNestedInput = {
    create?: XOR<UserCreateWithoutConsciousnessMetricsInput, UserUncheckedCreateWithoutConsciousnessMetricsInput>
    connectOrCreate?: UserCreateOrConnectWithoutConsciousnessMetricsInput
    upsert?: UserUpsertWithoutConsciousnessMetricsInput
    connect?: UserWhereUniqueInput
    update?: XOR<XOR<UserUpdateToOneWithWhereWithoutConsciousnessMetricsInput, UserUpdateWithoutConsciousnessMetricsInput>, UserUncheckedUpdateWithoutConsciousnessMetricsInput>
  }

  export type UserCreateNestedOneWithoutEmpowermentEventsInput = {
    create?: XOR<UserCreateWithoutEmpowermentEventsInput, UserUncheckedCreateWithoutEmpowermentEventsInput>
    connectOrCreate?: UserCreateOrConnectWithoutEmpowermentEventsInput
    connect?: UserWhereUniqueInput
  }

  export type BucketDropCreateNestedOneWithoutEmpowermentEventsInput = {
    create?: XOR<BucketDropCreateWithoutEmpowermentEventsInput, BucketDropUncheckedCreateWithoutEmpowermentEventsInput>
    connectOrCreate?: BucketDropCreateOrConnectWithoutEmpowermentEventsInput
    connect?: BucketDropWhereUniqueInput
  }

  export type UserUpdateOneRequiredWithoutEmpowermentEventsNestedInput = {
    create?: XOR<UserCreateWithoutEmpowermentEventsInput, UserUncheckedCreateWithoutEmpowermentEventsInput>
    connectOrCreate?: UserCreateOrConnectWithoutEmpowermentEventsInput
    upsert?: UserUpsertWithoutEmpowermentEventsInput
    connect?: UserWhereUniqueInput
    update?: XOR<XOR<UserUpdateToOneWithWhereWithoutEmpowermentEventsInput, UserUpdateWithoutEmpowermentEventsInput>, UserUncheckedUpdateWithoutEmpowermentEventsInput>
  }

  export type BucketDropUpdateOneWithoutEmpowermentEventsNestedInput = {
    create?: XOR<BucketDropCreateWithoutEmpowermentEventsInput, BucketDropUncheckedCreateWithoutEmpowermentEventsInput>
    connectOrCreate?: BucketDropCreateOrConnectWithoutEmpowermentEventsInput
    upsert?: BucketDropUpsertWithoutEmpowermentEventsInput
    disconnect?: BucketDropWhereInput | boolean
    delete?: BucketDropWhereInput | boolean
    connect?: BucketDropWhereUniqueInput
    update?: XOR<XOR<BucketDropUpdateToOneWithWhereWithoutEmpowermentEventsInput, BucketDropUpdateWithoutEmpowermentEventsInput>, BucketDropUncheckedUpdateWithoutEmpowermentEventsInput>
  }

  export type UserCreateNestedOneWithoutSubscriptionInput = {
    create?: XOR<UserCreateWithoutSubscriptionInput, UserUncheckedCreateWithoutSubscriptionInput>
    connectOrCreate?: UserCreateOrConnectWithoutSubscriptionInput
    connect?: UserWhereUniqueInput
  }

  export type UserUpdateOneRequiredWithoutSubscriptionNestedInput = {
    create?: XOR<UserCreateWithoutSubscriptionInput, UserUncheckedCreateWithoutSubscriptionInput>
    connectOrCreate?: UserCreateOrConnectWithoutSubscriptionInput
    upsert?: UserUpsertWithoutSubscriptionInput
    connect?: UserWhereUniqueInput
    update?: XOR<XOR<UserUpdateToOneWithWhereWithoutSubscriptionInput, UserUpdateWithoutSubscriptionInput>, UserUncheckedUpdateWithoutSubscriptionInput>
  }

  export type NestedStringFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel>
    in?: string[] | ListStringFieldRefInput<$PrismaModel>
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel>
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    not?: NestedStringFilter<$PrismaModel> | string
  }

  export type NestedStringNullableFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel> | null
    in?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    not?: NestedStringNullableFilter<$PrismaModel> | string | null
  }

  export type NestedDateTimeFilter<$PrismaModel = never> = {
    equals?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    in?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel>
    notIn?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel>
    lt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    lte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    not?: NestedDateTimeFilter<$PrismaModel> | Date | string
  }

  export type NestedStringWithAggregatesFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel>
    in?: string[] | ListStringFieldRefInput<$PrismaModel>
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel>
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    not?: NestedStringWithAggregatesFilter<$PrismaModel> | string
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedStringFilter<$PrismaModel>
    _max?: NestedStringFilter<$PrismaModel>
  }

  export type NestedIntFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel>
    in?: number[] | ListIntFieldRefInput<$PrismaModel>
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel>
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntFilter<$PrismaModel> | number
  }

  export type NestedStringNullableWithAggregatesFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel> | null
    in?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel> | null
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    not?: NestedStringNullableWithAggregatesFilter<$PrismaModel> | string | null
    _count?: NestedIntNullableFilter<$PrismaModel>
    _min?: NestedStringNullableFilter<$PrismaModel>
    _max?: NestedStringNullableFilter<$PrismaModel>
  }

  export type NestedIntNullableFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel> | null
    in?: number[] | ListIntFieldRefInput<$PrismaModel> | null
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel> | null
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntNullableFilter<$PrismaModel> | number | null
  }

  export type NestedDateTimeWithAggregatesFilter<$PrismaModel = never> = {
    equals?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    in?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel>
    notIn?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel>
    lt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    lte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    not?: NestedDateTimeWithAggregatesFilter<$PrismaModel> | Date | string
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedDateTimeFilter<$PrismaModel>
    _max?: NestedDateTimeFilter<$PrismaModel>
  }

  export type NestedFloatFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel>
    in?: number[] | ListFloatFieldRefInput<$PrismaModel>
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel>
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatFilter<$PrismaModel> | number
  }

  export type NestedBoolFilter<$PrismaModel = never> = {
    equals?: boolean | BooleanFieldRefInput<$PrismaModel>
    not?: NestedBoolFilter<$PrismaModel> | boolean
  }
  export type NestedJsonFilter<$PrismaModel = never> =
    | PatchUndefined<
        Either<Required<NestedJsonFilterBase<$PrismaModel>>, Exclude<keyof Required<NestedJsonFilterBase<$PrismaModel>>, 'path'>>,
        Required<NestedJsonFilterBase<$PrismaModel>>
      >
    | OptionalFlat<Omit<Required<NestedJsonFilterBase<$PrismaModel>>, 'path'>>

  export type NestedJsonFilterBase<$PrismaModel = never> = {
    equals?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | JsonNullValueFilter
    path?: string[]
    mode?: QueryMode | EnumQueryModeFieldRefInput<$PrismaModel>
    string_contains?: string | StringFieldRefInput<$PrismaModel>
    string_starts_with?: string | StringFieldRefInput<$PrismaModel>
    string_ends_with?: string | StringFieldRefInput<$PrismaModel>
    array_starts_with?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    array_ends_with?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    array_contains?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | null
    lt?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    lte?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    gt?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    gte?: InputJsonValue | JsonFieldRefInput<$PrismaModel>
    not?: InputJsonValue | JsonFieldRefInput<$PrismaModel> | JsonNullValueFilter
  }

  export type NestedFloatWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel>
    in?: number[] | ListFloatFieldRefInput<$PrismaModel>
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel>
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatWithAggregatesFilter<$PrismaModel> | number
    _count?: NestedIntFilter<$PrismaModel>
    _avg?: NestedFloatFilter<$PrismaModel>
    _sum?: NestedFloatFilter<$PrismaModel>
    _min?: NestedFloatFilter<$PrismaModel>
    _max?: NestedFloatFilter<$PrismaModel>
  }

  export type NestedIntWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel>
    in?: number[] | ListIntFieldRefInput<$PrismaModel>
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel>
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntWithAggregatesFilter<$PrismaModel> | number
    _count?: NestedIntFilter<$PrismaModel>
    _avg?: NestedFloatFilter<$PrismaModel>
    _sum?: NestedIntFilter<$PrismaModel>
    _min?: NestedIntFilter<$PrismaModel>
    _max?: NestedIntFilter<$PrismaModel>
  }

  export type NestedBoolWithAggregatesFilter<$PrismaModel = never> = {
    equals?: boolean | BooleanFieldRefInput<$PrismaModel>
    not?: NestedBoolWithAggregatesFilter<$PrismaModel> | boolean
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedBoolFilter<$PrismaModel>
    _max?: NestedBoolFilter<$PrismaModel>
  }

  export type NestedFloatNullableFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel> | null
    in?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatNullableFilter<$PrismaModel> | number | null
  }

  export type NestedFloatNullableWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel> | null
    in?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel> | null
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatNullableWithAggregatesFilter<$PrismaModel> | number | null
    _count?: NestedIntNullableFilter<$PrismaModel>
    _avg?: NestedFloatNullableFilter<$PrismaModel>
    _sum?: NestedFloatNullableFilter<$PrismaModel>
    _min?: NestedFloatNullableFilter<$PrismaModel>
    _max?: NestedFloatNullableFilter<$PrismaModel>
  }

  export type NestedDateTimeNullableFilter<$PrismaModel = never> = {
    equals?: Date | string | DateTimeFieldRefInput<$PrismaModel> | null
    in?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel> | null
    notIn?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel> | null
    lt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    lte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    not?: NestedDateTimeNullableFilter<$PrismaModel> | Date | string | null
  }

  export type NestedDateTimeNullableWithAggregatesFilter<$PrismaModel = never> = {
    equals?: Date | string | DateTimeFieldRefInput<$PrismaModel> | null
    in?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel> | null
    notIn?: Date[] | string[] | ListDateTimeFieldRefInput<$PrismaModel> | null
    lt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    lte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gt?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    gte?: Date | string | DateTimeFieldRefInput<$PrismaModel>
    not?: NestedDateTimeNullableWithAggregatesFilter<$PrismaModel> | Date | string | null
    _count?: NestedIntNullableFilter<$PrismaModel>
    _min?: NestedDateTimeNullableFilter<$PrismaModel>
    _max?: NestedDateTimeNullableFilter<$PrismaModel>
  }

  export type NestedIntNullableWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel> | null
    in?: number[] | ListIntFieldRefInput<$PrismaModel> | null
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel> | null
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntNullableWithAggregatesFilter<$PrismaModel> | number | null
    _count?: NestedIntNullableFilter<$PrismaModel>
    _avg?: NestedFloatNullableFilter<$PrismaModel>
    _sum?: NestedIntNullableFilter<$PrismaModel>
    _min?: NestedIntNullableFilter<$PrismaModel>
    _max?: NestedIntNullableFilter<$PrismaModel>
  }

  export type ConsciousnessProfileCreateWithoutUserInput = {
    id?: string
    plkVersion?: string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: number
    plkProcessingStyle?: string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileCreatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: number
    consciousnessCoherence?: number
    authenticityScore?: number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: string
    foundationalTruth?: string | null
    coreWisdom?: string | null
    revolutionaryPotential?: number
    chaosCurrentIdentified?: boolean
    jazzFrequency?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type ConsciousnessProfileUncheckedCreateWithoutUserInput = {
    id?: string
    plkVersion?: string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: number
    plkProcessingStyle?: string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileCreatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: number
    consciousnessCoherence?: number
    authenticityScore?: number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: string
    foundationalTruth?: string | null
    coreWisdom?: string | null
    revolutionaryPotential?: number
    chaosCurrentIdentified?: boolean
    jazzFrequency?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type ConsciousnessProfileCreateOrConnectWithoutUserInput = {
    where: ConsciousnessProfileWhereUniqueInput
    create: XOR<ConsciousnessProfileCreateWithoutUserInput, ConsciousnessProfileUncheckedCreateWithoutUserInput>
  }

  export type BucketDropCreateWithoutUserInput = {
    id?: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutBucketDropInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutBucketDropInput
  }

  export type BucketDropUncheckedCreateWithoutUserInput = {
    id?: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutBucketDropInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutBucketDropInput
  }

  export type BucketDropCreateOrConnectWithoutUserInput = {
    where: BucketDropWhereUniqueInput
    create: XOR<BucketDropCreateWithoutUserInput, BucketDropUncheckedCreateWithoutUserInput>
  }

  export type BucketDropCreateManyUserInputEnvelope = {
    data: BucketDropCreateManyUserInput | BucketDropCreateManyUserInput[]
    skipDuplicates?: boolean
  }

  export type TapestryNodeCreateWithoutUserInput = {
    id?: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    createdAt?: Date | string
    updatedAt?: Date | string
    bucketDrop?: BucketDropCreateNestedOneWithoutTapestryNodesInput
  }

  export type TapestryNodeUncheckedCreateWithoutUserInput = {
    id?: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    bucketDropId?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type TapestryNodeCreateOrConnectWithoutUserInput = {
    where: TapestryNodeWhereUniqueInput
    create: XOR<TapestryNodeCreateWithoutUserInput, TapestryNodeUncheckedCreateWithoutUserInput>
  }

  export type TapestryNodeCreateManyUserInputEnvelope = {
    data: TapestryNodeCreateManyUserInput | TapestryNodeCreateManyUserInput[]
    skipDuplicates?: boolean
  }

  export type TribunalSessionCreateWithoutUserInput = {
    id?: string
    queryText: string
    sessionType?: string
    openaiResponse?: string | null
    anthropicResponse?: string | null
    perplexityResponse?: string | null
    geminiResponse?: string | null
    consensusScore?: number
    empowermentConsensus?: number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: Date | string | null
    duration?: number | null
    personasUsed?: TribunalSessionCreatepersonasUsedInput | string[]
    createdAt?: Date | string
  }

  export type TribunalSessionUncheckedCreateWithoutUserInput = {
    id?: string
    queryText: string
    sessionType?: string
    openaiResponse?: string | null
    anthropicResponse?: string | null
    perplexityResponse?: string | null
    geminiResponse?: string | null
    consensusScore?: number
    empowermentConsensus?: number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: Date | string | null
    duration?: number | null
    personasUsed?: TribunalSessionCreatepersonasUsedInput | string[]
    createdAt?: Date | string
  }

  export type TribunalSessionCreateOrConnectWithoutUserInput = {
    where: TribunalSessionWhereUniqueInput
    create: XOR<TribunalSessionCreateWithoutUserInput, TribunalSessionUncheckedCreateWithoutUserInput>
  }

  export type TribunalSessionCreateManyUserInputEnvelope = {
    data: TribunalSessionCreateManyUserInput | TribunalSessionCreateManyUserInput[]
    skipDuplicates?: boolean
  }

  export type ConsciousnessMetricCreateWithoutUserInput = {
    id?: string
    attentionLevel?: number
    flowStateIndicator?: number
    executiveFunctionLoad?: number
    hyperfocusActive?: boolean
    empowermentMomentum?: number
    authenticityAlignment?: number
    consciousnessClarity?: number
    revolutionaryReadiness?: number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: string | null
    energyLevel?: number
    supportNeeded?: boolean
    interventionType?: string | null
    timestamp?: Date | string
  }

  export type ConsciousnessMetricUncheckedCreateWithoutUserInput = {
    id?: string
    attentionLevel?: number
    flowStateIndicator?: number
    executiveFunctionLoad?: number
    hyperfocusActive?: boolean
    empowermentMomentum?: number
    authenticityAlignment?: number
    consciousnessClarity?: number
    revolutionaryReadiness?: number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: string | null
    energyLevel?: number
    supportNeeded?: boolean
    interventionType?: string | null
    timestamp?: Date | string
  }

  export type ConsciousnessMetricCreateOrConnectWithoutUserInput = {
    where: ConsciousnessMetricWhereUniqueInput
    create: XOR<ConsciousnessMetricCreateWithoutUserInput, ConsciousnessMetricUncheckedCreateWithoutUserInput>
  }

  export type ConsciousnessMetricCreateManyUserInputEnvelope = {
    data: ConsciousnessMetricCreateManyUserInput | ConsciousnessMetricCreateManyUserInput[]
    skipDuplicates?: boolean
  }

  export type MusicalDnaAnalysisCreateWithoutUserInput = {
    id?: string
    primaryGenres?: MusicalDnaAnalysisCreateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisCreateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: number
    introspectionLevel?: number
    resilienceMarkers?: number
    connectionLonging?: number
    catharticProcessing?: number
    narrativeArc?: string | null
    transformationStage?: string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: number
    confidenceLevel?: number
    lastSpotifySync?: Date | string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type MusicalDnaAnalysisUncheckedCreateWithoutUserInput = {
    id?: string
    primaryGenres?: MusicalDnaAnalysisCreateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisCreateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: number
    introspectionLevel?: number
    resilienceMarkers?: number
    connectionLonging?: number
    catharticProcessing?: number
    narrativeArc?: string | null
    transformationStage?: string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: number
    confidenceLevel?: number
    lastSpotifySync?: Date | string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type MusicalDnaAnalysisCreateOrConnectWithoutUserInput = {
    where: MusicalDnaAnalysisWhereUniqueInput
    create: XOR<MusicalDnaAnalysisCreateWithoutUserInput, MusicalDnaAnalysisUncheckedCreateWithoutUserInput>
  }

  export type MusicalDnaAnalysisCreateManyUserInputEnvelope = {
    data: MusicalDnaAnalysisCreateManyUserInput | MusicalDnaAnalysisCreateManyUserInput[]
    skipDuplicates?: boolean
  }

  export type EmpowermentEventCreateWithoutUserInput = {
    id?: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
    bucketDrop?: BucketDropCreateNestedOneWithoutEmpowermentEventsInput
  }

  export type EmpowermentEventUncheckedCreateWithoutUserInput = {
    id?: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    bucketDropId?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
  }

  export type EmpowermentEventCreateOrConnectWithoutUserInput = {
    where: EmpowermentEventWhereUniqueInput
    create: XOR<EmpowermentEventCreateWithoutUserInput, EmpowermentEventUncheckedCreateWithoutUserInput>
  }

  export type EmpowermentEventCreateManyUserInputEnvelope = {
    data: EmpowermentEventCreateManyUserInput | EmpowermentEventCreateManyUserInput[]
    skipDuplicates?: boolean
  }

  export type SubscriptionCreateWithoutUserInput = {
    id?: string
    stripeCustomerId: string
    stripeSubscriptionId?: string | null
    stripePriceId?: string | null
    tier?: string
    status?: string
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: Date | string | null
    currentPeriodEnd?: Date | string | null
    cancelAtPeriodEnd?: boolean
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type SubscriptionUncheckedCreateWithoutUserInput = {
    id?: string
    stripeCustomerId: string
    stripeSubscriptionId?: string | null
    stripePriceId?: string | null
    tier?: string
    status?: string
    tribunalAccess?: boolean
    musicalDnaUnlocked?: boolean
    tapestryAdvanced?: boolean
    keithDirectAccess?: boolean
    currentPeriodStart?: Date | string | null
    currentPeriodEnd?: Date | string | null
    cancelAtPeriodEnd?: boolean
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type SubscriptionCreateOrConnectWithoutUserInput = {
    where: SubscriptionWhereUniqueInput
    create: XOR<SubscriptionCreateWithoutUserInput, SubscriptionUncheckedCreateWithoutUserInput>
  }

  export type ConsciousnessProfileUpsertWithoutUserInput = {
    update: XOR<ConsciousnessProfileUpdateWithoutUserInput, ConsciousnessProfileUncheckedUpdateWithoutUserInput>
    create: XOR<ConsciousnessProfileCreateWithoutUserInput, ConsciousnessProfileUncheckedCreateWithoutUserInput>
    where?: ConsciousnessProfileWhereInput
  }

  export type ConsciousnessProfileUpdateToOneWithWhereWithoutUserInput = {
    where?: ConsciousnessProfileWhereInput
    data: XOR<ConsciousnessProfileUpdateWithoutUserInput, ConsciousnessProfileUncheckedUpdateWithoutUserInput>
  }

  export type ConsciousnessProfileUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    plkVersion?: StringFieldUpdateOperationsInput | string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: FloatFieldUpdateOperationsInput | number
    plkProcessingStyle?: NullableStringFieldUpdateOperationsInput | string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileUpdatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: IntFieldUpdateOperationsInput | number
    consciousnessCoherence?: FloatFieldUpdateOperationsInput | number
    authenticityScore?: FloatFieldUpdateOperationsInput | number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: StringFieldUpdateOperationsInput | string
    foundationalTruth?: NullableStringFieldUpdateOperationsInput | string | null
    coreWisdom?: NullableStringFieldUpdateOperationsInput | string | null
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    chaosCurrentIdentified?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequency?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessProfileUncheckedUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    plkVersion?: StringFieldUpdateOperationsInput | string
    plkMetaphorPatterns?: JsonNullValueInput | InputJsonValue
    plkCommunicationStyle?: JsonNullValueInput | InputJsonValue
    plkResonanceScore?: FloatFieldUpdateOperationsInput | number
    plkProcessingStyle?: NullableStringFieldUpdateOperationsInput | string | null
    adhdIndicators?: JsonNullValueInput | InputJsonValue
    autismIndicators?: JsonNullValueInput | InputJsonValue
    cognitiveStrengths?: JsonNullValueInput | InputJsonValue
    processingPreferences?: JsonNullValueInput | InputJsonValue
    attentionPatterns?: JsonNullValueInput | InputJsonValue
    hyperfocusAreas?: ConsciousnessProfileUpdatehyperfocusAreasInput | string[]
    executiveFunctionMap?: JsonNullValueInput | InputJsonValue
    empowermentLevel?: IntFieldUpdateOperationsInput | number
    consciousnessCoherence?: FloatFieldUpdateOperationsInput | number
    authenticityScore?: FloatFieldUpdateOperationsInput | number
    growthTrajectory?: JsonNullValueInput | InputJsonValue
    consciousnessGrade?: StringFieldUpdateOperationsInput | string
    foundationalTruth?: NullableStringFieldUpdateOperationsInput | string | null
    coreWisdom?: NullableStringFieldUpdateOperationsInput | string | null
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    chaosCurrentIdentified?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequency?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type BucketDropUpsertWithWhereUniqueWithoutUserInput = {
    where: BucketDropWhereUniqueInput
    update: XOR<BucketDropUpdateWithoutUserInput, BucketDropUncheckedUpdateWithoutUserInput>
    create: XOR<BucketDropCreateWithoutUserInput, BucketDropUncheckedCreateWithoutUserInput>
  }

  export type BucketDropUpdateWithWhereUniqueWithoutUserInput = {
    where: BucketDropWhereUniqueInput
    data: XOR<BucketDropUpdateWithoutUserInput, BucketDropUncheckedUpdateWithoutUserInput>
  }

  export type BucketDropUpdateManyWithWhereWithoutUserInput = {
    where: BucketDropScalarWhereInput
    data: XOR<BucketDropUpdateManyMutationInput, BucketDropUncheckedUpdateManyWithoutUserInput>
  }

  export type BucketDropScalarWhereInput = {
    AND?: BucketDropScalarWhereInput | BucketDropScalarWhereInput[]
    OR?: BucketDropScalarWhereInput[]
    NOT?: BucketDropScalarWhereInput | BucketDropScalarWhereInput[]
    id?: StringFilter<"BucketDrop"> | string
    userId?: StringFilter<"BucketDrop"> | string
    content?: StringFilter<"BucketDrop"> | string
    contentType?: StringFilter<"BucketDrop"> | string
    emotionalIntensity?: FloatFilter<"BucketDrop"> | number
    urgencyLevel?: IntFilter<"BucketDrop"> | number
    cognitiveLoad?: FloatFilter<"BucketDrop"> | number
    adhdContext?: JsonFilter<"BucketDrop">
    hyperfocusIndicator?: BoolFilter<"BucketDrop"> | boolean
    executiveFunctionTag?: StringNullableFilter<"BucketDrop"> | string | null
    plkResonance?: FloatFilter<"BucketDrop"> | number
    metaphorExtracted?: StringNullableFilter<"BucketDrop"> | string | null
    linguisticPattern?: StringNullableFilter<"BucketDrop"> | string | null
    status?: StringFilter<"BucketDrop"> | string
    tapestryIntegrated?: BoolFilter<"BucketDrop"> | boolean
    tribunalReviewed?: BoolFilter<"BucketDrop"> | boolean
    capturedAt?: DateTimeFilter<"BucketDrop"> | Date | string
    updatedAt?: DateTimeFilter<"BucketDrop"> | Date | string
  }

  export type TapestryNodeUpsertWithWhereUniqueWithoutUserInput = {
    where: TapestryNodeWhereUniqueInput
    update: XOR<TapestryNodeUpdateWithoutUserInput, TapestryNodeUncheckedUpdateWithoutUserInput>
    create: XOR<TapestryNodeCreateWithoutUserInput, TapestryNodeUncheckedCreateWithoutUserInput>
  }

  export type TapestryNodeUpdateWithWhereUniqueWithoutUserInput = {
    where: TapestryNodeWhereUniqueInput
    data: XOR<TapestryNodeUpdateWithoutUserInput, TapestryNodeUncheckedUpdateWithoutUserInput>
  }

  export type TapestryNodeUpdateManyWithWhereWithoutUserInput = {
    where: TapestryNodeScalarWhereInput
    data: XOR<TapestryNodeUpdateManyMutationInput, TapestryNodeUncheckedUpdateManyWithoutUserInput>
  }

  export type TapestryNodeScalarWhereInput = {
    AND?: TapestryNodeScalarWhereInput | TapestryNodeScalarWhereInput[]
    OR?: TapestryNodeScalarWhereInput[]
    NOT?: TapestryNodeScalarWhereInput | TapestryNodeScalarWhereInput[]
    id?: StringFilter<"TapestryNode"> | string
    userId?: StringFilter<"TapestryNode"> | string
    xCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    yCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    zCoordinate?: FloatNullableFilter<"TapestryNode"> | number | null
    nodeSize?: IntFilter<"TapestryNode"> | number
    nodeColor?: StringFilter<"TapestryNode"> | string
    thoughtContent?: StringFilter<"TapestryNode"> | string
    emotionalResonance?: FloatFilter<"TapestryNode"> | number
    consciousnessDepth?: IntFilter<"TapestryNode"> | number
    growthSignificance?: FloatFilter<"TapestryNode"> | number
    connectedNodes?: StringNullableListFilter<"TapestryNode">
    connectionStrengths?: FloatNullableListFilter<"TapestryNode">
    networkCentrality?: FloatFilter<"TapestryNode"> | number
    aiInterpretation?: JsonFilter<"TapestryNode">
    patternCategory?: StringNullableFilter<"TapestryNode"> | string | null
    empowermentPotential?: FloatFilter<"TapestryNode"> | number
    bucketDropId?: StringNullableFilter<"TapestryNode"> | string | null
    createdAt?: DateTimeFilter<"TapestryNode"> | Date | string
    updatedAt?: DateTimeFilter<"TapestryNode"> | Date | string
  }

  export type TribunalSessionUpsertWithWhereUniqueWithoutUserInput = {
    where: TribunalSessionWhereUniqueInput
    update: XOR<TribunalSessionUpdateWithoutUserInput, TribunalSessionUncheckedUpdateWithoutUserInput>
    create: XOR<TribunalSessionCreateWithoutUserInput, TribunalSessionUncheckedCreateWithoutUserInput>
  }

  export type TribunalSessionUpdateWithWhereUniqueWithoutUserInput = {
    where: TribunalSessionWhereUniqueInput
    data: XOR<TribunalSessionUpdateWithoutUserInput, TribunalSessionUncheckedUpdateWithoutUserInput>
  }

  export type TribunalSessionUpdateManyWithWhereWithoutUserInput = {
    where: TribunalSessionScalarWhereInput
    data: XOR<TribunalSessionUpdateManyMutationInput, TribunalSessionUncheckedUpdateManyWithoutUserInput>
  }

  export type TribunalSessionScalarWhereInput = {
    AND?: TribunalSessionScalarWhereInput | TribunalSessionScalarWhereInput[]
    OR?: TribunalSessionScalarWhereInput[]
    NOT?: TribunalSessionScalarWhereInput | TribunalSessionScalarWhereInput[]
    id?: StringFilter<"TribunalSession"> | string
    userId?: StringFilter<"TribunalSession"> | string
    queryText?: StringFilter<"TribunalSession"> | string
    sessionType?: StringFilter<"TribunalSession"> | string
    openaiResponse?: StringNullableFilter<"TribunalSession"> | string | null
    anthropicResponse?: StringNullableFilter<"TribunalSession"> | string | null
    perplexityResponse?: StringNullableFilter<"TribunalSession"> | string | null
    geminiResponse?: StringNullableFilter<"TribunalSession"> | string | null
    consensusScore?: FloatFilter<"TribunalSession"> | number
    empowermentConsensus?: FloatFilter<"TribunalSession"> | number
    consciousnessInsights?: JsonFilter<"TribunalSession">
    keithWisdomTriggered?: BoolFilter<"TribunalSession"> | boolean
    foundationalTruthHit?: BoolFilter<"TribunalSession"> | boolean
    revolutionaryPotential?: FloatFilter<"TribunalSession"> | number
    adhdAdaptations?: JsonFilter<"TribunalSession">
    processingAccommodations?: JsonFilter<"TribunalSession">
    cognitiveAccessibility?: JsonFilter<"TribunalSession">
    completedAt?: DateTimeNullableFilter<"TribunalSession"> | Date | string | null
    duration?: IntNullableFilter<"TribunalSession"> | number | null
    personasUsed?: StringNullableListFilter<"TribunalSession">
    createdAt?: DateTimeFilter<"TribunalSession"> | Date | string
  }

  export type ConsciousnessMetricUpsertWithWhereUniqueWithoutUserInput = {
    where: ConsciousnessMetricWhereUniqueInput
    update: XOR<ConsciousnessMetricUpdateWithoutUserInput, ConsciousnessMetricUncheckedUpdateWithoutUserInput>
    create: XOR<ConsciousnessMetricCreateWithoutUserInput, ConsciousnessMetricUncheckedCreateWithoutUserInput>
  }

  export type ConsciousnessMetricUpdateWithWhereUniqueWithoutUserInput = {
    where: ConsciousnessMetricWhereUniqueInput
    data: XOR<ConsciousnessMetricUpdateWithoutUserInput, ConsciousnessMetricUncheckedUpdateWithoutUserInput>
  }

  export type ConsciousnessMetricUpdateManyWithWhereWithoutUserInput = {
    where: ConsciousnessMetricScalarWhereInput
    data: XOR<ConsciousnessMetricUpdateManyMutationInput, ConsciousnessMetricUncheckedUpdateManyWithoutUserInput>
  }

  export type ConsciousnessMetricScalarWhereInput = {
    AND?: ConsciousnessMetricScalarWhereInput | ConsciousnessMetricScalarWhereInput[]
    OR?: ConsciousnessMetricScalarWhereInput[]
    NOT?: ConsciousnessMetricScalarWhereInput | ConsciousnessMetricScalarWhereInput[]
    id?: StringFilter<"ConsciousnessMetric"> | string
    userId?: StringFilter<"ConsciousnessMetric"> | string
    attentionLevel?: IntFilter<"ConsciousnessMetric"> | number
    flowStateIndicator?: FloatFilter<"ConsciousnessMetric"> | number
    executiveFunctionLoad?: FloatFilter<"ConsciousnessMetric"> | number
    hyperfocusActive?: BoolFilter<"ConsciousnessMetric"> | boolean
    empowermentMomentum?: FloatFilter<"ConsciousnessMetric"> | number
    authenticityAlignment?: FloatFilter<"ConsciousnessMetric"> | number
    consciousnessClarity?: FloatFilter<"ConsciousnessMetric"> | number
    revolutionaryReadiness?: FloatFilter<"ConsciousnessMetric"> | number
    environmentalFactors?: JsonFilter<"ConsciousnessMetric">
    socialContext?: JsonFilter<"ConsciousnessMetric">
    timeOfDay?: StringNullableFilter<"ConsciousnessMetric"> | string | null
    energyLevel?: IntFilter<"ConsciousnessMetric"> | number
    supportNeeded?: BoolFilter<"ConsciousnessMetric"> | boolean
    interventionType?: StringNullableFilter<"ConsciousnessMetric"> | string | null
    timestamp?: DateTimeFilter<"ConsciousnessMetric"> | Date | string
  }

  export type MusicalDnaAnalysisUpsertWithWhereUniqueWithoutUserInput = {
    where: MusicalDnaAnalysisWhereUniqueInput
    update: XOR<MusicalDnaAnalysisUpdateWithoutUserInput, MusicalDnaAnalysisUncheckedUpdateWithoutUserInput>
    create: XOR<MusicalDnaAnalysisCreateWithoutUserInput, MusicalDnaAnalysisUncheckedCreateWithoutUserInput>
  }

  export type MusicalDnaAnalysisUpdateWithWhereUniqueWithoutUserInput = {
    where: MusicalDnaAnalysisWhereUniqueInput
    data: XOR<MusicalDnaAnalysisUpdateWithoutUserInput, MusicalDnaAnalysisUncheckedUpdateWithoutUserInput>
  }

  export type MusicalDnaAnalysisUpdateManyWithWhereWithoutUserInput = {
    where: MusicalDnaAnalysisScalarWhereInput
    data: XOR<MusicalDnaAnalysisUpdateManyMutationInput, MusicalDnaAnalysisUncheckedUpdateManyWithoutUserInput>
  }

  export type MusicalDnaAnalysisScalarWhereInput = {
    AND?: MusicalDnaAnalysisScalarWhereInput | MusicalDnaAnalysisScalarWhereInput[]
    OR?: MusicalDnaAnalysisScalarWhereInput[]
    NOT?: MusicalDnaAnalysisScalarWhereInput | MusicalDnaAnalysisScalarWhereInput[]
    id?: StringFilter<"MusicalDnaAnalysis"> | string
    userId?: StringFilter<"MusicalDnaAnalysis"> | string
    primaryGenres?: StringNullableListFilter<"MusicalDnaAnalysis">
    primaryArtists?: StringNullableListFilter<"MusicalDnaAnalysis">
    emotionalThemes?: JsonFilter<"MusicalDnaAnalysis">
    acousticPreference?: FloatFilter<"MusicalDnaAnalysis"> | number
    introspectionLevel?: FloatFilter<"MusicalDnaAnalysis"> | number
    resilienceMarkers?: FloatFilter<"MusicalDnaAnalysis"> | number
    connectionLonging?: FloatFilter<"MusicalDnaAnalysis"> | number
    catharticProcessing?: FloatFilter<"MusicalDnaAnalysis"> | number
    narrativeArc?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    transformationStage?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    musicalMetaphors?: JsonFilter<"MusicalDnaAnalysis">
    resonancePattern?: StringNullableFilter<"MusicalDnaAnalysis"> | string | null
    cognitiveMapping?: JsonFilter<"MusicalDnaAnalysis">
    songsAnalyzed?: IntFilter<"MusicalDnaAnalysis"> | number
    confidenceLevel?: FloatFilter<"MusicalDnaAnalysis"> | number
    lastSpotifySync?: DateTimeNullableFilter<"MusicalDnaAnalysis"> | Date | string | null
    createdAt?: DateTimeFilter<"MusicalDnaAnalysis"> | Date | string
    updatedAt?: DateTimeFilter<"MusicalDnaAnalysis"> | Date | string
  }

  export type EmpowermentEventUpsertWithWhereUniqueWithoutUserInput = {
    where: EmpowermentEventWhereUniqueInput
    update: XOR<EmpowermentEventUpdateWithoutUserInput, EmpowermentEventUncheckedUpdateWithoutUserInput>
    create: XOR<EmpowermentEventCreateWithoutUserInput, EmpowermentEventUncheckedCreateWithoutUserInput>
  }

  export type EmpowermentEventUpdateWithWhereUniqueWithoutUserInput = {
    where: EmpowermentEventWhereUniqueInput
    data: XOR<EmpowermentEventUpdateWithoutUserInput, EmpowermentEventUncheckedUpdateWithoutUserInput>
  }

  export type EmpowermentEventUpdateManyWithWhereWithoutUserInput = {
    where: EmpowermentEventScalarWhereInput
    data: XOR<EmpowermentEventUpdateManyMutationInput, EmpowermentEventUncheckedUpdateManyWithoutUserInput>
  }

  export type EmpowermentEventScalarWhereInput = {
    AND?: EmpowermentEventScalarWhereInput | EmpowermentEventScalarWhereInput[]
    OR?: EmpowermentEventScalarWhereInput[]
    NOT?: EmpowermentEventScalarWhereInput | EmpowermentEventScalarWhereInput[]
    id?: StringFilter<"EmpowermentEvent"> | string
    userId?: StringFilter<"EmpowermentEvent"> | string
    eventType?: StringFilter<"EmpowermentEvent"> | string
    description?: StringFilter<"EmpowermentEvent"> | string
    intensityLevel?: FloatFilter<"EmpowermentEvent"> | number
    scarsToCodeMoment?: BoolFilter<"EmpowermentEvent"> | boolean
    chaosCurrentRealized?: BoolFilter<"EmpowermentEvent"> | boolean
    jazzFrequencyTuned?: BoolFilter<"EmpowermentEvent"> | boolean
    sourceType?: StringNullableFilter<"EmpowermentEvent"> | string | null
    bucketDropId?: StringNullableFilter<"EmpowermentEvent"> | string | null
    consciousnessShift?: FloatFilter<"EmpowermentEvent"> | number
    empowermentIncrease?: FloatFilter<"EmpowermentEvent"> | number
    revolutionaryPotential?: FloatFilter<"EmpowermentEvent"> | number
    aiValidated?: BoolFilter<"EmpowermentEvent"> | boolean
    userConfirmed?: BoolFilter<"EmpowermentEvent"> | boolean
    createdAt?: DateTimeFilter<"EmpowermentEvent"> | Date | string
  }

  export type SubscriptionUpsertWithoutUserInput = {
    update: XOR<SubscriptionUpdateWithoutUserInput, SubscriptionUncheckedUpdateWithoutUserInput>
    create: XOR<SubscriptionCreateWithoutUserInput, SubscriptionUncheckedCreateWithoutUserInput>
    where?: SubscriptionWhereInput
  }

  export type SubscriptionUpdateToOneWithWhereWithoutUserInput = {
    where?: SubscriptionWhereInput
    data: XOR<SubscriptionUpdateWithoutUserInput, SubscriptionUncheckedUpdateWithoutUserInput>
  }

  export type SubscriptionUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    stripeCustomerId?: StringFieldUpdateOperationsInput | string
    stripeSubscriptionId?: NullableStringFieldUpdateOperationsInput | string | null
    stripePriceId?: NullableStringFieldUpdateOperationsInput | string | null
    tier?: StringFieldUpdateOperationsInput | string
    status?: StringFieldUpdateOperationsInput | string
    tribunalAccess?: BoolFieldUpdateOperationsInput | boolean
    musicalDnaUnlocked?: BoolFieldUpdateOperationsInput | boolean
    tapestryAdvanced?: BoolFieldUpdateOperationsInput | boolean
    keithDirectAccess?: BoolFieldUpdateOperationsInput | boolean
    currentPeriodStart?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    currentPeriodEnd?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    cancelAtPeriodEnd?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type SubscriptionUncheckedUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    stripeCustomerId?: StringFieldUpdateOperationsInput | string
    stripeSubscriptionId?: NullableStringFieldUpdateOperationsInput | string | null
    stripePriceId?: NullableStringFieldUpdateOperationsInput | string | null
    tier?: StringFieldUpdateOperationsInput | string
    status?: StringFieldUpdateOperationsInput | string
    tribunalAccess?: BoolFieldUpdateOperationsInput | boolean
    musicalDnaUnlocked?: BoolFieldUpdateOperationsInput | boolean
    tapestryAdvanced?: BoolFieldUpdateOperationsInput | boolean
    keithDirectAccess?: BoolFieldUpdateOperationsInput | boolean
    currentPeriodStart?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    currentPeriodEnd?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    cancelAtPeriodEnd?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type UserCreateWithoutConsciousnessProfileInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    bucketDrops?: BucketDropCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutUserInput
    subscription?: SubscriptionCreateNestedOneWithoutUserInput
  }

  export type UserUncheckedCreateWithoutConsciousnessProfileInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    bucketDrops?: BucketDropUncheckedCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionUncheckedCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutUserInput
    subscription?: SubscriptionUncheckedCreateNestedOneWithoutUserInput
  }

  export type UserCreateOrConnectWithoutConsciousnessProfileInput = {
    where: UserWhereUniqueInput
    create: XOR<UserCreateWithoutConsciousnessProfileInput, UserUncheckedCreateWithoutConsciousnessProfileInput>
  }

  export type UserUpsertWithoutConsciousnessProfileInput = {
    update: XOR<UserUpdateWithoutConsciousnessProfileInput, UserUncheckedUpdateWithoutConsciousnessProfileInput>
    create: XOR<UserCreateWithoutConsciousnessProfileInput, UserUncheckedCreateWithoutConsciousnessProfileInput>
    where?: UserWhereInput
  }

  export type UserUpdateToOneWithWhereWithoutConsciousnessProfileInput = {
    where?: UserWhereInput
    data: XOR<UserUpdateWithoutConsciousnessProfileInput, UserUncheckedUpdateWithoutConsciousnessProfileInput>
  }

  export type UserUpdateWithoutConsciousnessProfileInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    bucketDrops?: BucketDropUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUpdateOneWithoutUserNestedInput
  }

  export type UserUncheckedUpdateWithoutConsciousnessProfileInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    bucketDrops?: BucketDropUncheckedUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUncheckedUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUncheckedUpdateOneWithoutUserNestedInput
  }

  export type UserCreateWithoutBucketDropsInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileCreateNestedOneWithoutUserInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutUserInput
    subscription?: SubscriptionCreateNestedOneWithoutUserInput
  }

  export type UserUncheckedCreateWithoutBucketDropsInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionUncheckedCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutUserInput
    subscription?: SubscriptionUncheckedCreateNestedOneWithoutUserInput
  }

  export type UserCreateOrConnectWithoutBucketDropsInput = {
    where: UserWhereUniqueInput
    create: XOR<UserCreateWithoutBucketDropsInput, UserUncheckedCreateWithoutBucketDropsInput>
  }

  export type TapestryNodeCreateWithoutBucketDropInput = {
    id?: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    createdAt?: Date | string
    updatedAt?: Date | string
    user: UserCreateNestedOneWithoutTapestryNodesInput
  }

  export type TapestryNodeUncheckedCreateWithoutBucketDropInput = {
    id?: string
    userId: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type TapestryNodeCreateOrConnectWithoutBucketDropInput = {
    where: TapestryNodeWhereUniqueInput
    create: XOR<TapestryNodeCreateWithoutBucketDropInput, TapestryNodeUncheckedCreateWithoutBucketDropInput>
  }

  export type TapestryNodeCreateManyBucketDropInputEnvelope = {
    data: TapestryNodeCreateManyBucketDropInput | TapestryNodeCreateManyBucketDropInput[]
    skipDuplicates?: boolean
  }

  export type EmpowermentEventCreateWithoutBucketDropInput = {
    id?: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
    user: UserCreateNestedOneWithoutEmpowermentEventsInput
  }

  export type EmpowermentEventUncheckedCreateWithoutBucketDropInput = {
    id?: string
    userId: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
  }

  export type EmpowermentEventCreateOrConnectWithoutBucketDropInput = {
    where: EmpowermentEventWhereUniqueInput
    create: XOR<EmpowermentEventCreateWithoutBucketDropInput, EmpowermentEventUncheckedCreateWithoutBucketDropInput>
  }

  export type EmpowermentEventCreateManyBucketDropInputEnvelope = {
    data: EmpowermentEventCreateManyBucketDropInput | EmpowermentEventCreateManyBucketDropInput[]
    skipDuplicates?: boolean
  }

  export type UserUpsertWithoutBucketDropsInput = {
    update: XOR<UserUpdateWithoutBucketDropsInput, UserUncheckedUpdateWithoutBucketDropsInput>
    create: XOR<UserCreateWithoutBucketDropsInput, UserUncheckedCreateWithoutBucketDropsInput>
    where?: UserWhereInput
  }

  export type UserUpdateToOneWithWhereWithoutBucketDropsInput = {
    where?: UserWhereInput
    data: XOR<UserUpdateWithoutBucketDropsInput, UserUncheckedUpdateWithoutBucketDropsInput>
  }

  export type UserUpdateWithoutBucketDropsInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUpdateOneWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUpdateOneWithoutUserNestedInput
  }

  export type UserUncheckedUpdateWithoutBucketDropsInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUncheckedUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUncheckedUpdateOneWithoutUserNestedInput
  }

  export type TapestryNodeUpsertWithWhereUniqueWithoutBucketDropInput = {
    where: TapestryNodeWhereUniqueInput
    update: XOR<TapestryNodeUpdateWithoutBucketDropInput, TapestryNodeUncheckedUpdateWithoutBucketDropInput>
    create: XOR<TapestryNodeCreateWithoutBucketDropInput, TapestryNodeUncheckedCreateWithoutBucketDropInput>
  }

  export type TapestryNodeUpdateWithWhereUniqueWithoutBucketDropInput = {
    where: TapestryNodeWhereUniqueInput
    data: XOR<TapestryNodeUpdateWithoutBucketDropInput, TapestryNodeUncheckedUpdateWithoutBucketDropInput>
  }

  export type TapestryNodeUpdateManyWithWhereWithoutBucketDropInput = {
    where: TapestryNodeScalarWhereInput
    data: XOR<TapestryNodeUpdateManyMutationInput, TapestryNodeUncheckedUpdateManyWithoutBucketDropInput>
  }

  export type EmpowermentEventUpsertWithWhereUniqueWithoutBucketDropInput = {
    where: EmpowermentEventWhereUniqueInput
    update: XOR<EmpowermentEventUpdateWithoutBucketDropInput, EmpowermentEventUncheckedUpdateWithoutBucketDropInput>
    create: XOR<EmpowermentEventCreateWithoutBucketDropInput, EmpowermentEventUncheckedCreateWithoutBucketDropInput>
  }

  export type EmpowermentEventUpdateWithWhereUniqueWithoutBucketDropInput = {
    where: EmpowermentEventWhereUniqueInput
    data: XOR<EmpowermentEventUpdateWithoutBucketDropInput, EmpowermentEventUncheckedUpdateWithoutBucketDropInput>
  }

  export type EmpowermentEventUpdateManyWithWhereWithoutBucketDropInput = {
    where: EmpowermentEventScalarWhereInput
    data: XOR<EmpowermentEventUpdateManyMutationInput, EmpowermentEventUncheckedUpdateManyWithoutBucketDropInput>
  }

  export type UserCreateWithoutTapestryNodesInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutUserInput
    subscription?: SubscriptionCreateNestedOneWithoutUserInput
  }

  export type UserUncheckedCreateWithoutTapestryNodesInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropUncheckedCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionUncheckedCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutUserInput
    subscription?: SubscriptionUncheckedCreateNestedOneWithoutUserInput
  }

  export type UserCreateOrConnectWithoutTapestryNodesInput = {
    where: UserWhereUniqueInput
    create: XOR<UserCreateWithoutTapestryNodesInput, UserUncheckedCreateWithoutTapestryNodesInput>
  }

  export type BucketDropCreateWithoutTapestryNodesInput = {
    id?: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
    user: UserCreateNestedOneWithoutBucketDropsInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutBucketDropInput
  }

  export type BucketDropUncheckedCreateWithoutTapestryNodesInput = {
    id?: string
    userId: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutBucketDropInput
  }

  export type BucketDropCreateOrConnectWithoutTapestryNodesInput = {
    where: BucketDropWhereUniqueInput
    create: XOR<BucketDropCreateWithoutTapestryNodesInput, BucketDropUncheckedCreateWithoutTapestryNodesInput>
  }

  export type UserUpsertWithoutTapestryNodesInput = {
    update: XOR<UserUpdateWithoutTapestryNodesInput, UserUncheckedUpdateWithoutTapestryNodesInput>
    create: XOR<UserCreateWithoutTapestryNodesInput, UserUncheckedCreateWithoutTapestryNodesInput>
    where?: UserWhereInput
  }

  export type UserUpdateToOneWithWhereWithoutTapestryNodesInput = {
    where?: UserWhereInput
    data: XOR<UserUpdateWithoutTapestryNodesInput, UserUncheckedUpdateWithoutTapestryNodesInput>
  }

  export type UserUpdateWithoutTapestryNodesInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUpdateOneWithoutUserNestedInput
  }

  export type UserUncheckedUpdateWithoutTapestryNodesInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUncheckedUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUncheckedUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUncheckedUpdateOneWithoutUserNestedInput
  }

  export type BucketDropUpsertWithoutTapestryNodesInput = {
    update: XOR<BucketDropUpdateWithoutTapestryNodesInput, BucketDropUncheckedUpdateWithoutTapestryNodesInput>
    create: XOR<BucketDropCreateWithoutTapestryNodesInput, BucketDropUncheckedCreateWithoutTapestryNodesInput>
    where?: BucketDropWhereInput
  }

  export type BucketDropUpdateToOneWithWhereWithoutTapestryNodesInput = {
    where?: BucketDropWhereInput
    data: XOR<BucketDropUpdateWithoutTapestryNodesInput, BucketDropUncheckedUpdateWithoutTapestryNodesInput>
  }

  export type BucketDropUpdateWithoutTapestryNodesInput = {
    id?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutBucketDropsNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutBucketDropNestedInput
  }

  export type BucketDropUncheckedUpdateWithoutTapestryNodesInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutBucketDropNestedInput
  }

  export type UserCreateWithoutTribunalSessionsInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutUserInput
    subscription?: SubscriptionCreateNestedOneWithoutUserInput
  }

  export type UserUncheckedCreateWithoutTribunalSessionsInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropUncheckedCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutUserInput
    subscription?: SubscriptionUncheckedCreateNestedOneWithoutUserInput
  }

  export type UserCreateOrConnectWithoutTribunalSessionsInput = {
    where: UserWhereUniqueInput
    create: XOR<UserCreateWithoutTribunalSessionsInput, UserUncheckedCreateWithoutTribunalSessionsInput>
  }

  export type UserUpsertWithoutTribunalSessionsInput = {
    update: XOR<UserUpdateWithoutTribunalSessionsInput, UserUncheckedUpdateWithoutTribunalSessionsInput>
    create: XOR<UserCreateWithoutTribunalSessionsInput, UserUncheckedCreateWithoutTribunalSessionsInput>
    where?: UserWhereInput
  }

  export type UserUpdateToOneWithWhereWithoutTribunalSessionsInput = {
    where?: UserWhereInput
    data: XOR<UserUpdateWithoutTribunalSessionsInput, UserUncheckedUpdateWithoutTribunalSessionsInput>
  }

  export type UserUpdateWithoutTribunalSessionsInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUpdateOneWithoutUserNestedInput
  }

  export type UserUncheckedUpdateWithoutTribunalSessionsInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUncheckedUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUncheckedUpdateOneWithoutUserNestedInput
  }

  export type UserCreateWithoutMusicalDnaAnalysesInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutUserInput
    subscription?: SubscriptionCreateNestedOneWithoutUserInput
  }

  export type UserUncheckedCreateWithoutMusicalDnaAnalysesInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropUncheckedCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionUncheckedCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutUserInput
    subscription?: SubscriptionUncheckedCreateNestedOneWithoutUserInput
  }

  export type UserCreateOrConnectWithoutMusicalDnaAnalysesInput = {
    where: UserWhereUniqueInput
    create: XOR<UserCreateWithoutMusicalDnaAnalysesInput, UserUncheckedCreateWithoutMusicalDnaAnalysesInput>
  }

  export type UserUpsertWithoutMusicalDnaAnalysesInput = {
    update: XOR<UserUpdateWithoutMusicalDnaAnalysesInput, UserUncheckedUpdateWithoutMusicalDnaAnalysesInput>
    create: XOR<UserCreateWithoutMusicalDnaAnalysesInput, UserUncheckedCreateWithoutMusicalDnaAnalysesInput>
    where?: UserWhereInput
  }

  export type UserUpdateToOneWithWhereWithoutMusicalDnaAnalysesInput = {
    where?: UserWhereInput
    data: XOR<UserUpdateWithoutMusicalDnaAnalysesInput, UserUncheckedUpdateWithoutMusicalDnaAnalysesInput>
  }

  export type UserUpdateWithoutMusicalDnaAnalysesInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUpdateOneWithoutUserNestedInput
  }

  export type UserUncheckedUpdateWithoutMusicalDnaAnalysesInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUncheckedUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUncheckedUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUncheckedUpdateOneWithoutUserNestedInput
  }

  export type UserCreateWithoutConsciousnessMetricsInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutUserInput
    subscription?: SubscriptionCreateNestedOneWithoutUserInput
  }

  export type UserUncheckedCreateWithoutConsciousnessMetricsInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropUncheckedCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionUncheckedCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutUserInput
    subscription?: SubscriptionUncheckedCreateNestedOneWithoutUserInput
  }

  export type UserCreateOrConnectWithoutConsciousnessMetricsInput = {
    where: UserWhereUniqueInput
    create: XOR<UserCreateWithoutConsciousnessMetricsInput, UserUncheckedCreateWithoutConsciousnessMetricsInput>
  }

  export type UserUpsertWithoutConsciousnessMetricsInput = {
    update: XOR<UserUpdateWithoutConsciousnessMetricsInput, UserUncheckedUpdateWithoutConsciousnessMetricsInput>
    create: XOR<UserCreateWithoutConsciousnessMetricsInput, UserUncheckedCreateWithoutConsciousnessMetricsInput>
    where?: UserWhereInput
  }

  export type UserUpdateToOneWithWhereWithoutConsciousnessMetricsInput = {
    where?: UserWhereInput
    data: XOR<UserUpdateWithoutConsciousnessMetricsInput, UserUncheckedUpdateWithoutConsciousnessMetricsInput>
  }

  export type UserUpdateWithoutConsciousnessMetricsInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUpdateOneWithoutUserNestedInput
  }

  export type UserUncheckedUpdateWithoutConsciousnessMetricsInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUncheckedUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUncheckedUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUncheckedUpdateOneWithoutUserNestedInput
  }

  export type UserCreateWithoutEmpowermentEventsInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisCreateNestedManyWithoutUserInput
    subscription?: SubscriptionCreateNestedOneWithoutUserInput
  }

  export type UserUncheckedCreateWithoutEmpowermentEventsInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropUncheckedCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionUncheckedCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput
    subscription?: SubscriptionUncheckedCreateNestedOneWithoutUserInput
  }

  export type UserCreateOrConnectWithoutEmpowermentEventsInput = {
    where: UserWhereUniqueInput
    create: XOR<UserCreateWithoutEmpowermentEventsInput, UserUncheckedCreateWithoutEmpowermentEventsInput>
  }

  export type BucketDropCreateWithoutEmpowermentEventsInput = {
    id?: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
    user: UserCreateNestedOneWithoutBucketDropsInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutBucketDropInput
  }

  export type BucketDropUncheckedCreateWithoutEmpowermentEventsInput = {
    id?: string
    userId: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutBucketDropInput
  }

  export type BucketDropCreateOrConnectWithoutEmpowermentEventsInput = {
    where: BucketDropWhereUniqueInput
    create: XOR<BucketDropCreateWithoutEmpowermentEventsInput, BucketDropUncheckedCreateWithoutEmpowermentEventsInput>
  }

  export type UserUpsertWithoutEmpowermentEventsInput = {
    update: XOR<UserUpdateWithoutEmpowermentEventsInput, UserUncheckedUpdateWithoutEmpowermentEventsInput>
    create: XOR<UserCreateWithoutEmpowermentEventsInput, UserUncheckedCreateWithoutEmpowermentEventsInput>
    where?: UserWhereInput
  }

  export type UserUpdateToOneWithWhereWithoutEmpowermentEventsInput = {
    where?: UserWhereInput
    data: XOR<UserUpdateWithoutEmpowermentEventsInput, UserUncheckedUpdateWithoutEmpowermentEventsInput>
  }

  export type UserUpdateWithoutEmpowermentEventsInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUpdateOneWithoutUserNestedInput
  }

  export type UserUncheckedUpdateWithoutEmpowermentEventsInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUncheckedUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUncheckedUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput
    subscription?: SubscriptionUncheckedUpdateOneWithoutUserNestedInput
  }

  export type BucketDropUpsertWithoutEmpowermentEventsInput = {
    update: XOR<BucketDropUpdateWithoutEmpowermentEventsInput, BucketDropUncheckedUpdateWithoutEmpowermentEventsInput>
    create: XOR<BucketDropCreateWithoutEmpowermentEventsInput, BucketDropUncheckedCreateWithoutEmpowermentEventsInput>
    where?: BucketDropWhereInput
  }

  export type BucketDropUpdateToOneWithWhereWithoutEmpowermentEventsInput = {
    where?: BucketDropWhereInput
    data: XOR<BucketDropUpdateWithoutEmpowermentEventsInput, BucketDropUncheckedUpdateWithoutEmpowermentEventsInput>
  }

  export type BucketDropUpdateWithoutEmpowermentEventsInput = {
    id?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutBucketDropsNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutBucketDropNestedInput
  }

  export type BucketDropUncheckedUpdateWithoutEmpowermentEventsInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutBucketDropNestedInput
  }

  export type UserCreateWithoutSubscriptionInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventCreateNestedManyWithoutUserInput
  }

  export type UserUncheckedCreateWithoutSubscriptionInput = {
    id?: string
    clerkId: string
    email: string
    username?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedCreateNestedOneWithoutUserInput
    bucketDrops?: BucketDropUncheckedCreateNestedManyWithoutUserInput
    tapestryNodes?: TapestryNodeUncheckedCreateNestedManyWithoutUserInput
    tribunalSessions?: TribunalSessionUncheckedCreateNestedManyWithoutUserInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedCreateNestedManyWithoutUserInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedCreateNestedManyWithoutUserInput
    empowermentEvents?: EmpowermentEventUncheckedCreateNestedManyWithoutUserInput
  }

  export type UserCreateOrConnectWithoutSubscriptionInput = {
    where: UserWhereUniqueInput
    create: XOR<UserCreateWithoutSubscriptionInput, UserUncheckedCreateWithoutSubscriptionInput>
  }

  export type UserUpsertWithoutSubscriptionInput = {
    update: XOR<UserUpdateWithoutSubscriptionInput, UserUncheckedUpdateWithoutSubscriptionInput>
    create: XOR<UserCreateWithoutSubscriptionInput, UserUncheckedCreateWithoutSubscriptionInput>
    where?: UserWhereInput
  }

  export type UserUpdateToOneWithWhereWithoutSubscriptionInput = {
    where?: UserWhereInput
    data: XOR<UserUpdateWithoutSubscriptionInput, UserUncheckedUpdateWithoutSubscriptionInput>
  }

  export type UserUpdateWithoutSubscriptionInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutUserNestedInput
  }

  export type UserUncheckedUpdateWithoutSubscriptionInput = {
    id?: StringFieldUpdateOperationsInput | string
    clerkId?: StringFieldUpdateOperationsInput | string
    email?: StringFieldUpdateOperationsInput | string
    username?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    consciousnessProfile?: ConsciousnessProfileUncheckedUpdateOneWithoutUserNestedInput
    bucketDrops?: BucketDropUncheckedUpdateManyWithoutUserNestedInput
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutUserNestedInput
    tribunalSessions?: TribunalSessionUncheckedUpdateManyWithoutUserNestedInput
    consciousnessMetrics?: ConsciousnessMetricUncheckedUpdateManyWithoutUserNestedInput
    musicalDnaAnalyses?: MusicalDnaAnalysisUncheckedUpdateManyWithoutUserNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutUserNestedInput
  }

  export type BucketDropCreateManyUserInput = {
    id?: string
    content: string
    contentType?: string
    emotionalIntensity?: number
    urgencyLevel?: number
    cognitiveLoad?: number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: boolean
    executiveFunctionTag?: string | null
    plkResonance?: number
    metaphorExtracted?: string | null
    linguisticPattern?: string | null
    status?: string
    tapestryIntegrated?: boolean
    tribunalReviewed?: boolean
    capturedAt?: Date | string
    updatedAt?: Date | string
  }

  export type TapestryNodeCreateManyUserInput = {
    id?: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    bucketDropId?: string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type TribunalSessionCreateManyUserInput = {
    id?: string
    queryText: string
    sessionType?: string
    openaiResponse?: string | null
    anthropicResponse?: string | null
    perplexityResponse?: string | null
    geminiResponse?: string | null
    consensusScore?: number
    empowermentConsensus?: number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: boolean
    foundationalTruthHit?: boolean
    revolutionaryPotential?: number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: Date | string | null
    duration?: number | null
    personasUsed?: TribunalSessionCreatepersonasUsedInput | string[]
    createdAt?: Date | string
  }

  export type ConsciousnessMetricCreateManyUserInput = {
    id?: string
    attentionLevel?: number
    flowStateIndicator?: number
    executiveFunctionLoad?: number
    hyperfocusActive?: boolean
    empowermentMomentum?: number
    authenticityAlignment?: number
    consciousnessClarity?: number
    revolutionaryReadiness?: number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: string | null
    energyLevel?: number
    supportNeeded?: boolean
    interventionType?: string | null
    timestamp?: Date | string
  }

  export type MusicalDnaAnalysisCreateManyUserInput = {
    id?: string
    primaryGenres?: MusicalDnaAnalysisCreateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisCreateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: number
    introspectionLevel?: number
    resilienceMarkers?: number
    connectionLonging?: number
    catharticProcessing?: number
    narrativeArc?: string | null
    transformationStage?: string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: number
    confidenceLevel?: number
    lastSpotifySync?: Date | string | null
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type EmpowermentEventCreateManyUserInput = {
    id?: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    bucketDropId?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
  }

  export type BucketDropUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    tapestryNodes?: TapestryNodeUpdateManyWithoutBucketDropNestedInput
    empowermentEvents?: EmpowermentEventUpdateManyWithoutBucketDropNestedInput
  }

  export type BucketDropUncheckedUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    tapestryNodes?: TapestryNodeUncheckedUpdateManyWithoutBucketDropNestedInput
    empowermentEvents?: EmpowermentEventUncheckedUpdateManyWithoutBucketDropNestedInput
  }

  export type BucketDropUncheckedUpdateManyWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    content?: StringFieldUpdateOperationsInput | string
    contentType?: StringFieldUpdateOperationsInput | string
    emotionalIntensity?: FloatFieldUpdateOperationsInput | number
    urgencyLevel?: IntFieldUpdateOperationsInput | number
    cognitiveLoad?: FloatFieldUpdateOperationsInput | number
    adhdContext?: JsonNullValueInput | InputJsonValue
    hyperfocusIndicator?: BoolFieldUpdateOperationsInput | boolean
    executiveFunctionTag?: NullableStringFieldUpdateOperationsInput | string | null
    plkResonance?: FloatFieldUpdateOperationsInput | number
    metaphorExtracted?: NullableStringFieldUpdateOperationsInput | string | null
    linguisticPattern?: NullableStringFieldUpdateOperationsInput | string | null
    status?: StringFieldUpdateOperationsInput | string
    tapestryIntegrated?: BoolFieldUpdateOperationsInput | boolean
    tribunalReviewed?: BoolFieldUpdateOperationsInput | boolean
    capturedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TapestryNodeUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    bucketDrop?: BucketDropUpdateOneWithoutTapestryNodesNestedInput
  }

  export type TapestryNodeUncheckedUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    bucketDropId?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TapestryNodeUncheckedUpdateManyWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    bucketDropId?: NullableStringFieldUpdateOperationsInput | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TribunalSessionUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    queryText?: StringFieldUpdateOperationsInput | string
    sessionType?: StringFieldUpdateOperationsInput | string
    openaiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    anthropicResponse?: NullableStringFieldUpdateOperationsInput | string | null
    perplexityResponse?: NullableStringFieldUpdateOperationsInput | string | null
    geminiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    consensusScore?: FloatFieldUpdateOperationsInput | number
    empowermentConsensus?: FloatFieldUpdateOperationsInput | number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: BoolFieldUpdateOperationsInput | boolean
    foundationalTruthHit?: BoolFieldUpdateOperationsInput | boolean
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    duration?: NullableIntFieldUpdateOperationsInput | number | null
    personasUsed?: TribunalSessionUpdatepersonasUsedInput | string[]
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TribunalSessionUncheckedUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    queryText?: StringFieldUpdateOperationsInput | string
    sessionType?: StringFieldUpdateOperationsInput | string
    openaiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    anthropicResponse?: NullableStringFieldUpdateOperationsInput | string | null
    perplexityResponse?: NullableStringFieldUpdateOperationsInput | string | null
    geminiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    consensusScore?: FloatFieldUpdateOperationsInput | number
    empowermentConsensus?: FloatFieldUpdateOperationsInput | number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: BoolFieldUpdateOperationsInput | boolean
    foundationalTruthHit?: BoolFieldUpdateOperationsInput | boolean
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    duration?: NullableIntFieldUpdateOperationsInput | number | null
    personasUsed?: TribunalSessionUpdatepersonasUsedInput | string[]
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TribunalSessionUncheckedUpdateManyWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    queryText?: StringFieldUpdateOperationsInput | string
    sessionType?: StringFieldUpdateOperationsInput | string
    openaiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    anthropicResponse?: NullableStringFieldUpdateOperationsInput | string | null
    perplexityResponse?: NullableStringFieldUpdateOperationsInput | string | null
    geminiResponse?: NullableStringFieldUpdateOperationsInput | string | null
    consensusScore?: FloatFieldUpdateOperationsInput | number
    empowermentConsensus?: FloatFieldUpdateOperationsInput | number
    consciousnessInsights?: JsonNullValueInput | InputJsonValue
    keithWisdomTriggered?: BoolFieldUpdateOperationsInput | boolean
    foundationalTruthHit?: BoolFieldUpdateOperationsInput | boolean
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    adhdAdaptations?: JsonNullValueInput | InputJsonValue
    processingAccommodations?: JsonNullValueInput | InputJsonValue
    cognitiveAccessibility?: JsonNullValueInput | InputJsonValue
    completedAt?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    duration?: NullableIntFieldUpdateOperationsInput | number | null
    personasUsed?: TribunalSessionUpdatepersonasUsedInput | string[]
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessMetricUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    attentionLevel?: IntFieldUpdateOperationsInput | number
    flowStateIndicator?: FloatFieldUpdateOperationsInput | number
    executiveFunctionLoad?: FloatFieldUpdateOperationsInput | number
    hyperfocusActive?: BoolFieldUpdateOperationsInput | boolean
    empowermentMomentum?: FloatFieldUpdateOperationsInput | number
    authenticityAlignment?: FloatFieldUpdateOperationsInput | number
    consciousnessClarity?: FloatFieldUpdateOperationsInput | number
    revolutionaryReadiness?: FloatFieldUpdateOperationsInput | number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: NullableStringFieldUpdateOperationsInput | string | null
    energyLevel?: IntFieldUpdateOperationsInput | number
    supportNeeded?: BoolFieldUpdateOperationsInput | boolean
    interventionType?: NullableStringFieldUpdateOperationsInput | string | null
    timestamp?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessMetricUncheckedUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    attentionLevel?: IntFieldUpdateOperationsInput | number
    flowStateIndicator?: FloatFieldUpdateOperationsInput | number
    executiveFunctionLoad?: FloatFieldUpdateOperationsInput | number
    hyperfocusActive?: BoolFieldUpdateOperationsInput | boolean
    empowermentMomentum?: FloatFieldUpdateOperationsInput | number
    authenticityAlignment?: FloatFieldUpdateOperationsInput | number
    consciousnessClarity?: FloatFieldUpdateOperationsInput | number
    revolutionaryReadiness?: FloatFieldUpdateOperationsInput | number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: NullableStringFieldUpdateOperationsInput | string | null
    energyLevel?: IntFieldUpdateOperationsInput | number
    supportNeeded?: BoolFieldUpdateOperationsInput | boolean
    interventionType?: NullableStringFieldUpdateOperationsInput | string | null
    timestamp?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type ConsciousnessMetricUncheckedUpdateManyWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    attentionLevel?: IntFieldUpdateOperationsInput | number
    flowStateIndicator?: FloatFieldUpdateOperationsInput | number
    executiveFunctionLoad?: FloatFieldUpdateOperationsInput | number
    hyperfocusActive?: BoolFieldUpdateOperationsInput | boolean
    empowermentMomentum?: FloatFieldUpdateOperationsInput | number
    authenticityAlignment?: FloatFieldUpdateOperationsInput | number
    consciousnessClarity?: FloatFieldUpdateOperationsInput | number
    revolutionaryReadiness?: FloatFieldUpdateOperationsInput | number
    environmentalFactors?: JsonNullValueInput | InputJsonValue
    socialContext?: JsonNullValueInput | InputJsonValue
    timeOfDay?: NullableStringFieldUpdateOperationsInput | string | null
    energyLevel?: IntFieldUpdateOperationsInput | number
    supportNeeded?: BoolFieldUpdateOperationsInput | boolean
    interventionType?: NullableStringFieldUpdateOperationsInput | string | null
    timestamp?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type MusicalDnaAnalysisUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    primaryGenres?: MusicalDnaAnalysisUpdateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisUpdateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: FloatFieldUpdateOperationsInput | number
    introspectionLevel?: FloatFieldUpdateOperationsInput | number
    resilienceMarkers?: FloatFieldUpdateOperationsInput | number
    connectionLonging?: FloatFieldUpdateOperationsInput | number
    catharticProcessing?: FloatFieldUpdateOperationsInput | number
    narrativeArc?: NullableStringFieldUpdateOperationsInput | string | null
    transformationStage?: NullableStringFieldUpdateOperationsInput | string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: NullableStringFieldUpdateOperationsInput | string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: IntFieldUpdateOperationsInput | number
    confidenceLevel?: FloatFieldUpdateOperationsInput | number
    lastSpotifySync?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type MusicalDnaAnalysisUncheckedUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    primaryGenres?: MusicalDnaAnalysisUpdateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisUpdateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: FloatFieldUpdateOperationsInput | number
    introspectionLevel?: FloatFieldUpdateOperationsInput | number
    resilienceMarkers?: FloatFieldUpdateOperationsInput | number
    connectionLonging?: FloatFieldUpdateOperationsInput | number
    catharticProcessing?: FloatFieldUpdateOperationsInput | number
    narrativeArc?: NullableStringFieldUpdateOperationsInput | string | null
    transformationStage?: NullableStringFieldUpdateOperationsInput | string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: NullableStringFieldUpdateOperationsInput | string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: IntFieldUpdateOperationsInput | number
    confidenceLevel?: FloatFieldUpdateOperationsInput | number
    lastSpotifySync?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type MusicalDnaAnalysisUncheckedUpdateManyWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    primaryGenres?: MusicalDnaAnalysisUpdateprimaryGenresInput | string[]
    primaryArtists?: MusicalDnaAnalysisUpdateprimaryArtistsInput | string[]
    emotionalThemes?: JsonNullValueInput | InputJsonValue
    acousticPreference?: FloatFieldUpdateOperationsInput | number
    introspectionLevel?: FloatFieldUpdateOperationsInput | number
    resilienceMarkers?: FloatFieldUpdateOperationsInput | number
    connectionLonging?: FloatFieldUpdateOperationsInput | number
    catharticProcessing?: FloatFieldUpdateOperationsInput | number
    narrativeArc?: NullableStringFieldUpdateOperationsInput | string | null
    transformationStage?: NullableStringFieldUpdateOperationsInput | string | null
    musicalMetaphors?: JsonNullValueInput | InputJsonValue
    resonancePattern?: NullableStringFieldUpdateOperationsInput | string | null
    cognitiveMapping?: JsonNullValueInput | InputJsonValue
    songsAnalyzed?: IntFieldUpdateOperationsInput | number
    confidenceLevel?: FloatFieldUpdateOperationsInput | number
    lastSpotifySync?: NullableDateTimeFieldUpdateOperationsInput | Date | string | null
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type EmpowermentEventUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    bucketDrop?: BucketDropUpdateOneWithoutEmpowermentEventsNestedInput
  }

  export type EmpowermentEventUncheckedUpdateWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    bucketDropId?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type EmpowermentEventUncheckedUpdateManyWithoutUserInput = {
    id?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    bucketDropId?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TapestryNodeCreateManyBucketDropInput = {
    id?: string
    userId: string
    xCoordinate?: number | null
    yCoordinate?: number | null
    zCoordinate?: number | null
    nodeSize?: number
    nodeColor?: string
    thoughtContent: string
    emotionalResonance?: number
    consciousnessDepth?: number
    growthSignificance?: number
    connectedNodes?: TapestryNodeCreateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeCreateconnectionStrengthsInput | number[]
    networkCentrality?: number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: string | null
    empowermentPotential?: number
    createdAt?: Date | string
    updatedAt?: Date | string
  }

  export type EmpowermentEventCreateManyBucketDropInput = {
    id?: string
    userId: string
    eventType: string
    description: string
    intensityLevel?: number
    scarsToCodeMoment?: boolean
    chaosCurrentRealized?: boolean
    jazzFrequencyTuned?: boolean
    sourceType?: string | null
    consciousnessShift?: number
    empowermentIncrease?: number
    revolutionaryPotential?: number
    aiValidated?: boolean
    userConfirmed?: boolean
    createdAt?: Date | string
  }

  export type TapestryNodeUpdateWithoutBucketDropInput = {
    id?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutTapestryNodesNestedInput
  }

  export type TapestryNodeUncheckedUpdateWithoutBucketDropInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type TapestryNodeUncheckedUpdateManyWithoutBucketDropInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    xCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    yCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    zCoordinate?: NullableFloatFieldUpdateOperationsInput | number | null
    nodeSize?: IntFieldUpdateOperationsInput | number
    nodeColor?: StringFieldUpdateOperationsInput | string
    thoughtContent?: StringFieldUpdateOperationsInput | string
    emotionalResonance?: FloatFieldUpdateOperationsInput | number
    consciousnessDepth?: IntFieldUpdateOperationsInput | number
    growthSignificance?: FloatFieldUpdateOperationsInput | number
    connectedNodes?: TapestryNodeUpdateconnectedNodesInput | string[]
    connectionStrengths?: TapestryNodeUpdateconnectionStrengthsInput | number[]
    networkCentrality?: FloatFieldUpdateOperationsInput | number
    aiInterpretation?: JsonNullValueInput | InputJsonValue
    patternCategory?: NullableStringFieldUpdateOperationsInput | string | null
    empowermentPotential?: FloatFieldUpdateOperationsInput | number
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    updatedAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type EmpowermentEventUpdateWithoutBucketDropInput = {
    id?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
    user?: UserUpdateOneRequiredWithoutEmpowermentEventsNestedInput
  }

  export type EmpowermentEventUncheckedUpdateWithoutBucketDropInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }

  export type EmpowermentEventUncheckedUpdateManyWithoutBucketDropInput = {
    id?: StringFieldUpdateOperationsInput | string
    userId?: StringFieldUpdateOperationsInput | string
    eventType?: StringFieldUpdateOperationsInput | string
    description?: StringFieldUpdateOperationsInput | string
    intensityLevel?: FloatFieldUpdateOperationsInput | number
    scarsToCodeMoment?: BoolFieldUpdateOperationsInput | boolean
    chaosCurrentRealized?: BoolFieldUpdateOperationsInput | boolean
    jazzFrequencyTuned?: BoolFieldUpdateOperationsInput | boolean
    sourceType?: NullableStringFieldUpdateOperationsInput | string | null
    consciousnessShift?: FloatFieldUpdateOperationsInput | number
    empowermentIncrease?: FloatFieldUpdateOperationsInput | number
    revolutionaryPotential?: FloatFieldUpdateOperationsInput | number
    aiValidated?: BoolFieldUpdateOperationsInput | boolean
    userConfirmed?: BoolFieldUpdateOperationsInput | boolean
    createdAt?: DateTimeFieldUpdateOperationsInput | Date | string
  }



  /**
   * Batch Payload for updateMany & deleteMany & createMany
   */

  export type BatchPayload = {
    count: number
  }

  /**
   * DMMF
   */
  export const dmmf: runtime.BaseDMMF
}
