# What are test doubles?

test doubles 指的是物件的模擬物，用來測試的替身，an object that stands in for another object。

其他對於 test doubles 的稱呼有 doubles, mocks, stubs, fakes, spies, dummies。

## Why use test doubles?

常常有很多測試的情況是某個 class 或是 method 還沒寫好，協作者還沒被誕生， 或是協作者是系統外部物件。若要使用真實的物件必需做很多的設定，其中又有很多的關聯，造成測試結果無法預測。

Test doubles 常用於發送郵件，或是與 API 的互動，而非真正連結網路去執行。

## What do test doubles do?

- Set known return values (設定已知的回傳值)
- Fake method implementations (偽方法實現)
- Set expectations about calls to an object (設置對對象調用的期望)

## Definitions

*Double/mock*: a simple objectpre programmed with expectations and responses as preparation for the calls it will receive.

模擬與一個協作者的互動，設立一個指定的期望，去驗證互動是否真的有發生。

*Stub*: an instruction to an object to return a specific response to a method call.

一個虛擬指令，用來驗證回傳值或驗證狀態改變，只在意當下這個物件，忽略掉外部方法的呼叫。
