# What is RSpec

## A Testing Framework

RSpec是一套Ruby語言底下的自動化測試框架，主要用於測試程式執行是否符合我們想要的結果，可在實際手動執行之前先讓程式自動進行測試，節省開發和維護的時間。

"R":Ruby
"Spec": Specification, example, test

## 架構

- Given some context
- When some event occurs
- Then I expect some outcome

測試的基本架構： Given...When...Then...

## Written in Ruby

Uses a domain-specific languange (DSL), sometimes not very Ruby-like.
Rspec的程式比Test::Unit更好讀，寫的人更容易描述測試目的，可以說是一種可執行的規格文件。

## Rails is most common use for RSpec

非常多的Ruby on Rails專案採用RSpec作為測試框架。它又稱為一種BDD(Behavior-driven development)測試框架，相較於TDD用test思維，測試程式的結果。BDD強調的是用spec思維，描述程式應該有什麼行為。

參考：

[Better Specs](http://betterspecs.org/zh_tw/)

[RSpec 讓你愛上寫測試](https://www.slideshare.net/ihower/rspec-7394497)
