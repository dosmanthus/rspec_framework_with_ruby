describe 'Expectation Matchers' do
  describe 'truthiness matchers' do
    it 'will match true/false' do
      expect(1 < 2).to be(true) # 不要用 be_ture(舊語法，容易混淆)
      expect(1 > 2).to be(false) # 不要用 be_false(舊語法，容易混淆)

      expect('some string').not_to be(true) # string 實際上不完全 == true
      expect(nil).not_to be(false) # nil 實際上不完全 == false

      expect(0).not_to be(false)
    end

    it 'will match truthy/falsey' do
      expect(1 < 2).to be_truthy # not nil or false
      expect(1 > 2).to be_falsey # nil or false

      expect('some string').to be_truthy # any value 都是 true
      expect(nil).to be_falsey

      expect(0).not_to be_falsey # ruby 中 0 不是 falsey
    end
    it 'will match nil' do
      expect(nil).to be_nil
      expect(nil).to be(nil)
      expect(false).not_to be_nil

      expect(0).not_to be_nil
    end
  end
end
