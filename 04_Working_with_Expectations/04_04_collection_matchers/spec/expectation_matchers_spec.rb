describe 'Expectation Matchers' do
  describe 'collection matchers' do
    it 'will match arrays' do
      array = [1, 2, 3]

      expect(array).to include(3)
      expect(array).to include(2, 3)

      expect(array).to start_with(1)
      expect(array).to end_with(3)

      expect(array).to match_array([3, 2, 1])
      expect(array).not_to match_array([1, 2])

      expect(array).to contain_exactly(3, 2, 1)
      expect(array).not_to contain_exactly(1, 2)
    end
    it 'will match strings' do
      string = "some string"

      expect(string).to include('ring')
      expect(string).to include('so', 'ring')

      expect(string).to start_with('so')
      expect(string).to end_with('ring')
    end
    it 'will match hashes' do
      hash = { :a => 1, :b => 2, :c => 3 }

      expect(hash).to include(:a)
      expect(hash).to include(:a => 1)

      expect(hash).to include(:a => 1, :c => 3)
      expect(hash).to include({:a => 1, :c => 3})

      expect(hash).not_to include({"a" => 1, "c" => 3})
      # 在 ruby 中 symbol的 key 跟字串的 key 不一樣
    end
  end
end
