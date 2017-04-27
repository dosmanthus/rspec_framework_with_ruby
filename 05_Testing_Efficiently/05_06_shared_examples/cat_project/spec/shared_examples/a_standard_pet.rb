shared_examples_for 'a standard pet' do
  describe 'attributes' do
    it 'allows reading and writing for :name' do
      subject.name = 'Mary'
      expect(subject.name).to eq('Mary')
    end
    it 'allows reading and writing for :gender' do
      subject.gender = 'female'
      expect(subject.gender).to eq('female')
    end

    it 'allows reading and writing for :color' do
      subject.color = 'yellow'
      expect(subject.color).to eq('yellow')
    end

    it 'allows reading for :feet' do
      expect(subject.feet).to eq(4)
    end

    it "allows writing for :habits"
  end
end
