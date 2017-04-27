# Test database

## Database in Rails
- Three environments: development, production, test
- Three database configurations
- Test data needs to be independent

## Rspec commends

- rspec spec: Does not prepare test databse
- rake spec: Prepares test database(calls rake db:test:prepare)

## Rake db:test:prepare will do

- rake db:drop RAILS_ENV=test
- rake db:create RAILS_ENV=test
- rake db:schema:load RAILS_ENV=test

## Do not slow down your test suite

- Save objects to database only when necessary
- Database calls add significant time
- Sometimes unsaved instances can do the job
- Sometimes test doubles can do the job
- Sometimes stubs on the save action can do the job
