require 'cat'

describe 'Cat' do
  describe 'attributes' do
    before(:example) do
      @cat = Cat.new
    end

    it 'allows reading and writing for :name' do
      @cat.name = 'Mary'
      expect(@cat.name).to eq('Mary')
    end

    it 'allows reading and writing for :gender' do
      @cat.gender = 'female'
      expect(@cat.gender).to eq('female')
    end

    it 'allows reading and writing for :color' do
      @cat.color = 'yellow'
      expect(@cat.color).to eq('yellow')
    end

    it 'allows reading for :feet' do
      expect(@cat.feet).to eq(4)
    end

    it "allows writing for :habits"
  end
end
