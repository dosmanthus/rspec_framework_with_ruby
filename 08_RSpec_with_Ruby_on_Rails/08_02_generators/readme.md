# Generators

generators to generate placeholder files for your rspec tests

- Standard Rails generators create appropriate spec file
- generate manually: `rails generate rspec:model ModelName`

## Generator Choices

- model
- controller
- helper
- view
- mailer
- scaffold

## 實作

```
$ rails generate model Customer
```

it will create spec/models/customer_spec.rb

```
# customer_spec.rb
require 'rails_helper'

RSpec.describe Customer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
```

running rspec `$ rake`
