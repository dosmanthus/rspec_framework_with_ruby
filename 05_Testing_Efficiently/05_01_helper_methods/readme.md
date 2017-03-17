# Helper Methods

一開始我們會執行 `$rspec --init` 來初始化 rspec，這時候會產生一個 .rspec 檔案，以及一個spec 資料夾和名爲 spec_helper.rb 的檔案。

```
# .rspec
--color
--require spec_helper
```

`--require spec_helper` 讓 rspec 執行之前都會先載入 spec_helper.rb 這個檔案。在這個檔案中，一方面可以做 configuration 設定， 另一方面可以擺放通用的 methods(但避免加入過多的方法影響測試的效能)。

## configuration 設定

```
Rspec.configure do |config|
  config.expect_with :rspec do |c|
    # c.syntax = [:should, :expect]
    # 不使用舊的 should 語法
    c.syntax = :expect
  end
end
```

也可以做額外的設定，例如：

```
Rspec.configure do |config|
  ...
end

APP_ROOT = File.expand_path('../..', __FILE__)
```

