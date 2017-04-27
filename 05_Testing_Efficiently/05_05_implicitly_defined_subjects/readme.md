# Implicitly defined subjects

在 Rspec 中如果最外圍的 example group 是一個類別 (class), rspec 就會自動產生一個此類別的實體變數給每個 example，作爲隱定義的 subject。

```
describe Cat do
  # 將原本的 'Cat' 字串改爲 Cat 類別
  describe 'attributes' do
    # subject { Cat.new } 此行就不需定義

    it 'allows reading for :feet' do
      expect(subject.feet).to eq(4)
    end
  end
end
```
