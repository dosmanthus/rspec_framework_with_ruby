# Collection Matchers

## Arrays

```
array = [1, 2, 3]

expect(array).to include(3)
expect(array).to include(2, 3)

expect(array).to start_with(1)
expect(array).to end_with(3)

expect(array).to match_array([3, 2, 1]) # same elements in any order
expect(array).not_to match_array([1, 2])

expect(array).to contain_exactly(3, 2, 1)
expect(array).not_to contain_exactly(1, 2)
```

contain_exactly matcher 必需包含所有的元素，不在意順序。

參考： [contain_exactly matcher](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/contain-exactly-matcher)

## Strings

```
string = "Hello"

expect(string).to include("He")
expect(string).to include("He", "lo")

expect(string).to start_with("He")
expect(string).to end_with("lo")
```

## hashes

```
hash = {:city => 'Taipei', :country => 'TW'}

expect(hash).to include(:city)
expect(hash).to include(:city, :country)

expect(hash).to include(:city => 'Taipei')
expect(hash).to include(:city => 'Taipei',
                        :country => 'TW')

```
