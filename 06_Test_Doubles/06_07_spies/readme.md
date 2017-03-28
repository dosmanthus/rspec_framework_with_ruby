# Spies

```
it 'expects a call after it is received' do
  siri = spy("Siri")
  allow(double).to receive(:hey!).and_return('How can I help you?')
  siri.hey!
  expect(siri).to have_received(:hey!)
end
```

```
it 'expects a call after it is received' do
  siri = spy("Siri")
  allow(double).to receive(:hey!).and_return('How can I help you?')
  siri.hey!
  siri.hey!
  expect(siri).to have_received(:hey!).twice
end
```

## difference between spy and regular mock object

spy 不同之處在於，不用 stub methods。

```
it 'expects a call after it is received' do
  customer = spy("Customer")
  # allow(customer).to receive(:send_invoice)
  customer.send_invoice
  expect(customer).to have_received(:send_invoice)
end
```

## spy with partial test double

```
it 'expects a call after it is received' do
  customer = Customer.new # using real object
  allow(customer).to receive(:send_invoice) # provide stub methods
  customer.send_invoice
  expect(customer).to have_received(:send_invoice)
end
```

## works with let and before hocks

```
let(:order) do
  spy('Order', process_line_items: nil,
    charge_credit_card: true,
    send_email: true
  )
end

before(:example) do
  order.process_line_items
  order.charge_credit_card
  order.send_email
end

it 'calls #process_line_items on the order' do
  expect(order).to have_received(:process_line_itmes)
end

it 'calls #charge_credit_card on the order' do
  expect(order).to have_received(:charge_credit_card)
end

it 'calls #send_email' do
  expect(order).to have_received(:send_email)
end
```
