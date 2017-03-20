# Using the let method

```
before(:example) do
  @cat = Cat.new
end

it 'allows reading for :feet' do
  expect(@cat.feet).to eq(4)
end
```

在上面代碼 before block 中 @cat 會在每個 example 執行前先被賦值, 這樣會造成重複指派及執行。

如果在 before 中只是指派實體變數， 可以改爲使用 let 方法。

```
let(:cat) { Cat.new }

it 'allows reading for :feet' do
  expect(cat.feet).to eq(4)
end
```

let實際上是執行了:

```
before(:context) do
  def cat
    @cat ||= Cat.new
  end
end

it 'allows reading for :feet' do
  expect(cat.feet).to eq(4) # cat 實際上是呼叫 cat 方法。
end
```

let()有兩個好處:
1. 不用賦值給 instance variable 就可以緩存值。
2. 定義的變量是「惰性計算的」(lazy-evaluated)，不調用就不會執行賦值操作。

另外還有 let! 方法， let! 方法是 eager-evaluated，會先執行賦值。


