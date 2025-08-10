#!/bin/bash

# Install dependencies
npm install

# Run database setup
npm run db:setup

# Run Keith's wisdom script
npm run keith:wisdom

chmod +x setup-consciousness.sh
