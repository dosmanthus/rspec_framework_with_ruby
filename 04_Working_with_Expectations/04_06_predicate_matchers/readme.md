# Predicate Matchers

## 以 be 開頭且以 ？ 結尾的方法

with built-in methods

```
expect(value).to be_nil # for #nil?
expect(value).to be_odd # for #odd?
expect(value).to be_even # for #even?
expect(value).to be_zero # for #zero?
expect(value).to be_nonzero # for #nonzero?
expect(value).to be_integer # for #integer?
expect(value).to be_empty # for #empty?
```

這些方法並非 rspec 內建, 而是動態定義的，所以也可使用在自訂的方法上。

```
expect(product).to be_visible # calls product.visible?
expect(product.visible?).to be(true) # 跟這個方式相同
```

## has 開頭的方法

```
# built-in methods
expect(hash).to have_key(:city) # hash.has_key?
expect(hash).to have_value('Taipei') # hash.has_value?

# custom methods
expect(customer).to have_overdue_invoice # product.has_overdue_invoice?
```

參考： [Rspec 文件](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/predicate-matchers)
