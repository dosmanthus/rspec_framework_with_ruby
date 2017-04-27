# Message argument constraints

```
it "allows constraints on arguments" do
  double = double("Customer List")
  expect(double).to receive(:sort).with('name')
  double.sort('name')
end
```

## any_args matcher

```
it "allows constraints on arguments" do
  double = double("Customer List")
  expect(double).to receive(:sort).with(any_args)
  double.sort('name')
end
```

## Others

```
with(any_args)
with(no_args)
with('Some String')
with('Some String', 1234, true, [:a, :b, :c])
with('Some String', anything)
with(boolean)
with(hash_including(verbose: true))
with(array_including('apple'))
with(a_multiple_of(3))
with(<any matchers>)
```
