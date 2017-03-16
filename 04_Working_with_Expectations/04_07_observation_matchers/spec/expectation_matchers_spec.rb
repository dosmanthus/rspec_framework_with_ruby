describe 'Expectation Matchers' do
  describe 'observation matchers' do
    it 'will match when events change object attributes' do
      array = []
      expect{ array << 1 }.to change(array, :empty?).from(true).to(false)

      class Group
        attr_accessor :people_amount
        def initialize; @people_amount = 0; end
        def increment; @people_amount += 1; end
      end

      group = Group.new
      expect{ group.increment }.to change(group, :people_amount).from(0).to(1)
    end

    it 'will match when events change a value' do
      x = 10
      expect{ x += 1 }.to change{x}.from(10).to(11)
      expect{ x += 1 }.to change{x}.by(1)
      expect{ x += 1 }.to change{x}.by_at_least(1)
      expect{ x += 1 }.to change{x}.by_at_most (1)

      z = 11
      expect{ z += 1 }.to change{ z % 3 }.from(2).to(0)
    end

    it 'will match when errors are raised' do
      expect{ raise StandardError }.to raise_error
      expect{ raise StandardError }.to raise_exception

      expect{ 1/0 }.to raise_error(ZeroDivisionError)
      expect{ 1/0 }.to raise_error.with_message('divided by 0')
      expect{ 1/0 }.to raise_error.with_message(/divided/)

      expect{ 1/1 }.not_to raise_error
    end

    it 'will match when output is generated' do
      expect{ print 'hello' }.to output.to_stdout
      expect{ print 'hello' }.to output('hello').to_stdout
      expect{ print 'hello' }.to output(/ll/).to_stdout

      expect{ warn 'problem' }.to output(/problem/).to_stderr
    end
  end
end
