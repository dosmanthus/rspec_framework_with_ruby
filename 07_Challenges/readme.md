開始測試之前需要思考的問題：

- 要測試什麼？
- Happy path, unhappy path, edge cases
- Basic usage, Advance usage

## 解決 uninitialized constant NumberHelper (NameError) 問題

```
$ rspec --init
```

The problem came from not running rspec --init from the app's root, so none of the configuration in spec_helper.rb got loaded.

參考： [stackoverflow](http://stackoverflow.com/questions/28674732/uninitialized-constant-numberhelper-when-doing-include)
