describe 'Doubles' do

  it 'allows stubbing response with a block' do
    siri = double("Siri")
    allow(siri).to receive(:hey!) { "How can i help you?" }
    expect(siri.hey!).to eq("How can i help you?")
  end

  it 'allows stubbing responses with #and_return' do
    siri = double("Siri")
    allow(siri).to receive(:hey!).and_return("How can i help you?")
    expect(siri.hey!).to eq("How can i help you?")
  end

  it 'allows stubbing multiple methods with hash syntax' do
    person = double("Person")
    allow(person).to receive_messages(
      full_name: "David Lee",
      initials: "MTS"
    )
    expect(person.full_name).to eq("David Lee")
    expect(person.initials).to eq("MTS")
  end

  it 'allows stubbing with a hash argument to #double' do
    person = double("Person", full_name: "David Lee", initials: "MTS")
    expect(person.full_name).to eq("David Lee")
    expect(person.initials).to eq("MTS")
  end

  it 'allows stubbing multiple responses with #and_return' do
    die = double("Die")
    allow(die).to receive(:roll).and_return(1, 5, 2, 6)
    expect(die.roll).to eq(1)
    expect(die.roll).to eq(5)
    expect(die.roll).to eq(2)
    expect(die.roll).to eq(6)
    expect(die.roll).to eq(6) # 會持續回傳6
  end
end
