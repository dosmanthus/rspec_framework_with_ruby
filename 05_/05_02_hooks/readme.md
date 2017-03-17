# Hooks: Before, After, Around

有不同範圍的區別：

```
config.before(:suite) do
  # ...
end

before(:context) do # alias before(:all)
  # ...
end

before(:example) do # alias before(:each)
  # ...
end
```

After 也是一樣的使用方式，around 方法則可以將 before 和 after 包含在一個 block 內做完。

```
around(:example) do |example|
  # code to execute before example goes here
  example.run
  # code to execute after example goes here
end
```

關於 hooks 的注意事項：
需使用 instance variables 讓物件可以在 example 中取用。

