# Equivalence matchers

## ruby 的相等比較

```
x = 1

x == 1   # true
x == 1.0 # true, 會做類型轉換再比較。
x == "1" # false

x.eql?(1)   # true
x.eql?(1.0) # false, 會比較類型。
x.eql?("1") # false
```

```
x = 'Hello'

x == 'Hello'      # true
x.eql?('Hello')   # true
x.equal?('Hello') # false, 會判斷object_id是否相同。

x.object_id # 70327817163700
'Hello'.object_id 70327817078660
```

## Rspec 的相等比較測試

```
expect(x).to eq(1)    # x == 1, 最常用
expect(x).to be == 1  # x == 1
expect(x).to eql(1)   # x.eql?(1)
expect(x).to equal(1) # x.equal?(1), 較少用
expect(x).to be(1)    # x.equal?(1)

```
