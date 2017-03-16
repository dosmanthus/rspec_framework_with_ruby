# Complex Exceptations


## Compound Exceptations

```
and # alias: &

or # alias: |
```

```
s = 'Hello'
expect(s).to start_with('H').and end_with('o')
expect(s).to start_with('H') & end_with('o')

expect(s.length).to be_even.or be < 6
expect(s.length).to be_even | be < 6
```

## Composing Matchers

```
all(matcher)
include(matcher, matcher)
start_with(matcher)
end_with(matcher)
contain_exactly(matcher, matcher, matcher)
match(matcher)

change{ }.from(matcher).to(matcher)
change{}.by(matcher)
output(matcher).to_stdout
raise_error.with_message(matcher)
```

```
array = [1, 2, 3]
expect(array).to all( be < 5 )

expect(@items).to all(be_visible & be_in_stock)
```

```
fruits = ['apple', 'orange', 'banana']

expect(fruits).to start_with('apple')
expect(fruits).to start_with( start_with('a') )
expect(fruits).to start_with( a_string_starting_with('a') )
```

## Noun-Phrase Aliases for Matchers

start_with | a_string_starting_with
end_with | a_string_ending_with
match | a_string_matching
be < 2 | a_value < 2
be_within | a_value_within
contain_exactly | a_collection_containing_exactly
be_an_instance_of | an_instance_of
