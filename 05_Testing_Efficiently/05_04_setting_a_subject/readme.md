# Setting a Subject

如果在某個 describe 中，都是針對同一個物件做測試則可以使用 subject 方法。subject 方法實際上就是 let 的方法的簡短寫法。

如果有其他的物件則可以使用let來定義， 但只有其中一個物件可以使用 subject。

```
# let(:subject) { Cat.new }
subject { Cat.new }

it 'allows reading for :feet' do
  expect(subject.feet).to eq(4)
end
```

同樣有 subject! 方法可立即執行。
