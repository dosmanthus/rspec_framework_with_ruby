# Using mocks and stubs

```
it 'allows setting responses' do
  siri = double("Siri")
  allow(siri).to receive(:hey!) { "How can i help you?" }
  expect(siri.hey!).to eq("How can i help you?")
end
```

另一種寫法：

```
it 'allows setting responses' do
  siri = double("Siri")
  allow(siri).to receive(:hey!).and_return("How can i help you?")
  expect(siri.hey!).to eq("How can i help you?")
end
```

## receive_messages

```
it 'allows setting responses' do
  person = double("Person")
  allow(person).to receive_messages(
    full_name: "David Lee",
    initials: "MTS"
  )
  expect(person.full_name).to eq("David Lee")
  expect(person.initials).to eq("MTS")
end
```

簡略寫法：

```
it 'allows setting responses' do
  person = double("Person",
    full_name: "David Lee",
    initials: "MTS"
  )
  expect(person.full_name).to eq("David Lee")
  expect(person.initials).to eq("MTS")
end
```

## multiple responses

```
it 'allows setting multiple responses' do
  die = double("Die")
  allow(die).to receive(:roll).and_return(1, 5, 2, 6)
  expect(die.roll).to eq(1)
  expect(die.roll).to eq(5)
  expect(die.roll).to eq(2)
  expect(die.roll).to eq(6)
  expect(die.roll).to eq(6)
end
```
