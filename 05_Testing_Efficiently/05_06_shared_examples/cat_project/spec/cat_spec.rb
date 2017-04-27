require 'cat'
require 'shared_examples/a_standard_pet'

describe Cat do
  it_behaves_like 'a standard pet'

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
