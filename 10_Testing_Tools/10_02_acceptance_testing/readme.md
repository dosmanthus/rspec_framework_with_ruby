# Acceptance testing

## test level

- Unit tests
- Integration tests
- Acceptance tests (End-to-end or "full stack" testing)

## Acceptance tests

- thorough but slow
- No implementation details
- Based on user stories
- Behavior-driven development (BDD)

## Tools:

- [cucumber](https://cucumber.io/)
green like cucumber

1. Describe behaviour in plain text
2. Write a stpe definition in Ruby
3. Run and watch it fail
4. Write code to make the step pass
5. Run again and see the step pass
6. Repeat 2-5 until all the scenario steps pass

example:

```
# behaviour description

Feature: Addition
  *In order to* avoid silly mistakes
  *As* a math idiot
  *I want to* be told the sum of two numbers

  Scenario: Add two numbers
    *Given* I have entered 50 into the calculator
    *And* I have entered 70 into the calculator
    *When* I press add
    *Then* the result should be 120 on the screen

# step definition
Given /I have entered (.*) into the calculator/ do |n|
  calculator = Calculator.new
  calculator.push(n.to_i)
end
```

- [Capybara](https://github.com/teamcapybara/capybara)
- [Selenium](http://www.seleniumhq.org/)
- [Poltergeist](https://github.com/teampoltergeist/poltergeist)
