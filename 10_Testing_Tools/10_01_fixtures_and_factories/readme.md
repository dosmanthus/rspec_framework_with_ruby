# Fixtures and factories

## Fixtures

- Fixtures = sample data
- Stored as YAML files in spec/fixtures
- RSpec loads fixtures into test database before suite runs

```
# spec/fixtures/customers.yml
peyton:
  name: Peyton Chiang
  city: Taipei
  country: Taiwan

# spec/fixtures/orders.yml
peyton_apr_order:
  date: 2017-04-27
  customer: peyton
```

- can use erb in fixtures

```
<% 5.times do |n| %>
  peyton_order_<%= n %>:
    date: 2017-04-<%= 10 + n %>
    customer: peyton
<% end %>
```

- use label to reference the fixture

```
customers(:peyton)
customers(:peyton).id
customers(:peyton).location
customers(:peyton).orders.last
```

## Factories

- gem [factory_girl](https://github.com/thoughtbot/factory_girl) / [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)
- Stored as ruby code in spec/factories
- Defined but not automatically loaded into database

```
FactoryGirl.define do
  facotry :customer do
    name: "Peyton Chiang"
    city: "Taipei"
    country: "Taiwan"
  end

  factory :peyton, parent: customer

  factory :mary, parent: customer do
    name: "Mary Lee"
    city: "New Taipei City"
  end
end
```

- use factories in rspec

```
@peyton = build(:peyton)
@peyton = create(:peyton)
stub = build_stubbed(:peyton)

@tom = build(:customer, name: "Tom Mars")
```

## Fake data

- [Faker](https://github.com/stympy/faker)
- [Forgery](https://github.com/sevenwire/forgery)