# Other Useful Matchers

## Regular expression matcher

```
string = 'Hello'
expect(string).to match(/^H.+o$/)

# only works with string

expect('123').to match(/\d{3}/)
expect(123).not_to match(/\d{3}/)
```

補充： [regex](http://ruby-doc.com/docs/ProgrammingRuby/html/language.html#UJ)

```
^ Matches the beginning of a line.

$ Matches the end of a line.

\A Matches the beginning of the string.

\z Matches the end of the string.

\Z Matches the end of the string unless the string ends with a "\n", in which case it matches just before the "\n".
```

## Object type matchers

```
expect(@peyton).to be_instance_of(Editor)
expect(@peyton).to be_an_instance_of(Editor)
# be_instance_of 較嚴格，必需是此 Class 的 instance，
# 但 be_kind_of 可以是上層所有父類別的 instance。
# 例如 Editor 繼承自 Member Class
expect(@peyton).to be_kind_of(Member)
expect(@peyton).to be_a_kind_of(Member)
expect(@peyton).to be_a(Member)

expect([1, 2, 3]).to be_an(Array)
```

## Respond to matcher

```
expect(@peyton).to respond_to(:first_name)
# for ruby respond_to method
# This method is deprecated or moved on the latest stable version. The last existing version (v4.2.1) is shown here.
```

## Attribute matcher

```
expect(@peyton).to have_attributes(first_name: 'Peyton')
expect(@peyton).to have_attributes(first_name: 'Peyton', last_name: 'Lee')
```

## Satisfy matcher

較有彈性，將條件用 block 包起來，回傳 true or false。
但儘量少用，視爲最後的選擇。

```
expect(5).to satisfy { |v| v < 9 && v.odd? }

expect(@newest_order).to satisfy do |order|
  order.placed? && order.email_sent?
end
```
