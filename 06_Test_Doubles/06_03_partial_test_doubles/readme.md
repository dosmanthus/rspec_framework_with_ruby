# Partial test doubles

## 模擬實體方法到實際的物件上

```
it 'stubs instance methods on real objects' do
  time = Time.new(2010, 1, 1, 12, 0, 0)
  allow(time).to receive(:year).and_return(1975)

  expect(time.to_s).to eq('2010-01-01 12:00:00 +0800')
  expect(time.year).to eq(1975)


  hero = SuperHero.new
  hero.name = 'Superman'
  expect(hero.name).to eq('Supermam')

  allow(hero).to receive(:name).and_return('Clark Kent')

  expect(hero.name).to eq('Clark Kent')
end
```

## 模擬類別方法到實際的物件上

```
it 'stubs class methods on real objects' do
  fixed = Time.new(2010, 1, 1, 12, 0, 0)
  allow(Time).to receive(:now).and_return(fixed)

  expect(Time.now).to eq(fixed)
  expect(Time.now.year).to eq(2010)
end
```

## 模擬資料庫的呼叫

```
it 'can stub database calls' do
  double = double('Mock Customer')
  allow(double).to receive(:name).and_return('Bob')

  allow(Customer).to receive(:find).and_return(double)

  customer = Customer.find
  expect(customer.name).to eq('Bob')

  c1 = double('First Customer', name: 'John')
  c2 = double('Second Customer', name: 'Mary')

  allow(Customer).to receive(:all).and_return([c1, c2])

  customers = Customer.all
  expect(customers[1].name).to eq('Mary')
end
```



