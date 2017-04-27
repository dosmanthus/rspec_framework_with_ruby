describe 'Doubles' do
  context 'with argument constraints' do
    it 'excepts arguments will match' do
      double = double('Customer List')
      expect(double).to receive(:sort).with('name')
      double.sort('name')
    end
    it 'passes when any arguments are allowed' do
      double = double('Customer List')
      expect(double).to receive(:sort).with(any_args)
      double.sort('name')
    end
    it 'works the same with multiple arguments' do
      double = double('Customer List')
      expect(double).to receive(:sort).with('name', 'asc', true)
      double.sort('name', 'asc', true)
    end
    it 'allows contraining only some arguments' do
      double = double('Customer List')
      expect(double).to receive(:sort).with('name', anything, anything)
      double.sort('name', 'asc', true)
    end
    it 'allows using other matchers' do
      double = double('Customer List')
      expect(double).to receive(:sort).with(
        a_string_starting_with('n'),
        an_object_eq_to('asc') | an_object_eq_to('desc'),
        boolean
      )
      double.sort('name', 'asc', true)
    end
  end
end
