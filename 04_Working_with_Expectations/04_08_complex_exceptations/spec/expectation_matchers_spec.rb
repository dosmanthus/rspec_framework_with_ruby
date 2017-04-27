describe 'Expectation Matchers' do
  describe 'compound Exceptations' do
    it 'will match using: and, or, &, |' do
      array = [1, 2, 3, 4]
      expect(array).to start_with(1).and end_with(4)
      expect(array).to start_with(1) & include(2)

      expect( 10 * 10 ).to be_odd.or be > 50

      array = ['hello', 'goodbye'].shuffle
      expect(array.first).to eq('hello') | eq('goodbye')
    end
  end

  describe 'composing matchers' do
    it 'will match all collection elements using a matcher' do
      expect([1, 2, 3]).to all( be < 5 )
    end

    it 'will match by sending matchers as arguments to matchers' do
      string = 'hello'
      expect{ string = 'goodbye' }.to change{string}.from( match(/ll/) ).to( match(/oo/) )

      hash = { :a => 1, :b => 2, :c => 3 }
      expect(hash).to include( :a => be_odd, :b => be_even, :c => be_odd )
      expect(hash).to include( :a => be > 0, :b => be_within(2).of(4) )
    end

    it 'will match using noun-phrase aliases for matchers' do
      fruits = ['apple', 'banana', 'orange']
      expect(fruits).to start_with( a_string_starting_with('a') ) &
      include( a_string_matching(/a.a.a/) ) &
      end_with( a_string_ending_with('e') )

      array = [1, 2, 3, 4]
      expect(array).to start_with( a_value <= 2 ) | end_with( a_value_within(1).of(5) )
    end
  end
end
