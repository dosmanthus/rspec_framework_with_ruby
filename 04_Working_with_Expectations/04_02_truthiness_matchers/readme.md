# Truthiness Matchers

測試結果爲 true 或 false

```
expect(1 < 2).to be true
expect(1 < 2).to be(true) # 兩者皆可，推薦使用這種

expect(1 > 2).to be false
expect(1 > 2).to be(false)
```

需注意在 ruby 中 nil 爲 false, 如果一個值或物件存在則爲 true。所以 0 不是 false。

> Zero is a value, and ALL values in Ruby are evaluated to true, EXCEPT for FALSE and NIL.

```
expect(1 < 2).to be_truthy
expect(1 > 2).to be_falsey

expect('some string').to be_truthy
expect(nil).to be_falsey

expect(nil).to be_nil
expect(nil).to be nil
expect(false).not_to be_nil
```
