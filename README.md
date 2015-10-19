heroku create

heroku apps:rename jc-twizzler-sinatra --app secret-sierra-8949

login to heroku and create database

heroku apps:rename jc-twizzler-sinatra-db --app heroku-postgres-f7faf969

Note hostname, database, username, password for database

Check .git config for heroku remote name. Make sure it matches.

Set Heroku environment variables

heroku config:set DB_HOST=ec2-54-204-15-48.compute-1.amazonaws.com

heroku config:set DB_NAME=ddd4prcrti1lul

heroku config:set DB_USER=fnkzpuquliqbsf

heroku config:set DB_PASSWORD=OIy1CKg74Vl8pJhgUuhKw9l5On

connect to postgres DB using Psequel and import postgres.sql file (Use SSL)