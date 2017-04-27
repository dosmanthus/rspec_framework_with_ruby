# Installing

## RubyGem

[rspec-rails](https://github.com/rspec/rspec-rails)
RSpec with Rails-specific additions

## Creating a new Rails application

```
$ rails new rails_app
```

## Add to Gemfile

```
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
end
```

and running `bundle install`.

## Initialize rspec

```
rails generate rspec:install
```

and remove test directory

## Running RSpec

```
$ rspec

$ bundle exec rspec

$ rake spec

$ rake
```

