eb init udagram-api --platform node.js --region us-east-1 && 
eb use udagram-api-env && eb setenv DB_PORT=$DB_PORT JWT_SECRET=$JWT_SECRET POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME && 
eb deploy udagram-api-env