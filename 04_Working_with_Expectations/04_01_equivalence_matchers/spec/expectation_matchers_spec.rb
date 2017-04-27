describe 'Expectation Matchers' do
  describe 'equivalence matchers' do
    it 'will match loose equality with #eq' do
      a = "hello"
      b = "hello"
      expect(a).to eq(b)
      expect(a).to be == b

      c = 3
      d = 3.0
      expect(c).to eq(d) # 不同類型，但值一樣
    end

    it 'will match value equality with #eql' do
      a = "hello"
      b = "hello"
      expect(a).to eql(b) # 稍微嚴格

      c = 3
      d = 3.0
      expect(c).not_to eql(d) # 不同類型
    end

    it 'will match identity equality with #equal' do
      a = "hello"
      b = "hello"
      expect(a).not_to equal(b) # 相同值， 但不同的object

      c = b
      expect(c).to equal(b) # 相同object
      expect(b).to be(c)
    end
  end
end
