# Message expectations

- Ruby sends "messages" to objects to call methods
- Rspec can set expectations about those messages
- Not related to text or error messages to the user

```
it 'expects a call and allows a response' do
  double = double("Siri")
  expect(double).to receive(:hey!).and_return('How can I help you?')
  double.hey!
end
```

```
it 'does not matter which order' do
  double = double("Multi-step Process")

  expect(double).to receive(:step_1)
  expect(double).to receive(:step_2)

  double.step_2
  double.step_1
end
```

```
it 'works with #ordered when order matters' do
  double = double("Multi-step Process")

  expect(double).to receive(:step_1).ordered
  expect(double).to receive(:step_2).ordered

  double.step_1
  double.step_2
end
```
