# Numeric Comparison Matchers

數組的比較

```
expect(100).to eq(100)
expect(100).to be == 100

expect(100).to be > 99
expect(100).to be < 101
expect(100).to be >= 100
expect(100).to be <= 100

# range
expect(5).to be_between(3, 5).inclusive
expect(5).not_to be_between(3, 5).exclusive

expect(100).to be_within(5).of(105)
expect(1..10).to cover(3)
```

參考：

[be_within matcher](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/be-within-matcher)

[cover matcher](https://www.relishapp.com/rspec/rspec-expectations/v/3-5/docs/built-in-matchers/cover-matcher)
