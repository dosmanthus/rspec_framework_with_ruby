describe 'Doubles' do
  context 'with message expectations' do
    it 'expects a call and allows a response' do
      siri = double("Siri")
      expect(siri).to receive(:hey!).and_return('How can I help you?')

      siri.hey!
    end

    it 'does not matter which order' do
      double = double("Multi-step Process")

      expect(double).to receive(:step_1)
      expect(double).to receive(:step_2)

      double.step_2
      double.step_1
    end

    it 'works with #ordered when order matters' do
      double = double("Multi-step Process")

      expect(double).to receive(:step_1).ordered
      expect(double).to receive(:step_2).ordered

      double.step_1
      double.step_2
    end
  end
end
