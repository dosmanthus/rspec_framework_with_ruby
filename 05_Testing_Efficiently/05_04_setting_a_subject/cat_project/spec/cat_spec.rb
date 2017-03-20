require 'cat'

describe 'Cat' do
  describe 'attributes' do

    # let(:cat) {  }
    subject { Cat.new }

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

  describe '.colors' do
    let(:colors) { ['white', 'black', 'yellow', 'grey'] }
    it 'returns an array of color names' do
      # c = ['white', 'black', 'yellow', 'grey']
      # expect(Cat.colors).to match_array(c)
      expect(Cat.colors).to match_array(colors )
    end
  end

  describe '#profile' do
    let(:didi) { Cat.new(name: 'Didi', gender: 'male', color: 'black') }
    let(:new_cat) { Cat.new }

    it 'returns a string in the expected format' do
      expect(didi.profile).to eq('Didi male (black)')
    end

    context 'when initialized with no arguments' do
      it 'returns a string using default values' do
        expect(new_cat.profile).to eq('Bob unknown (unknown)')
      end
    end
  end
end
