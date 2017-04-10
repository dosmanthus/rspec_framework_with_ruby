# Transactional examples

- Each example runs in a transaction
- Database changes are rolled back at the end
- apec/rails_helper.rb
  config.use_transactional_fixtures = true
  config.use_transactional_examples = true
  (alias for transactional_fixtures)
- Data modified by before(:example) is rolled back
- Data modified by bofore(:context) is not rolled back
- Improves performance for example group
- Use after(:context) to revert modified data

```
describe Customer do
  before(:context) do
    @customer = Customer.create(name: 'Pater Pan')
  end

  after(:context) { @customer.destroy }
end
```

## [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)

Choose a strategy for managing test database data

