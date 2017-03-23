describe 'Doubles' do
  context "with partial test doubles" do
    it 'allows stubbing instance methods on Ruby classes' do
      time = Time.new(2010, 1, 1, 12, 0, 0)
      allow(time).to receive(:year).and_return(1975)

      expect(time.to_s).to eq('2010-01-01 12:00:00 +0800')
      expect(time.year).to eq(1975)
    end

    it 'allows stubbing instance methods on custom classes' do
      class SuperHero
        attr_accessor :name
      end

      hero = SuperHero.new
      hero.name = 'Superman'

      allow(hero).to receive(:name).and_return('Clack Kent')
      expect(hero.name).to eq('Clack Kent')
    end

    it 'allows stubbing class methods on Ruby classes' do
      fixed = Time.new(2010, 1, 1, 12, 0, 0)
      allow(Time).to receive(:now).and_return(fixed)

      expect(Time.now).to eq(fixed)
      expect(Time.now.year).to eq(2010)
    end

    it 'allows stubbing database calls a mock object' do
      class Customer
        attr_accessor :name
        def self.find
          #database query
        end
      end

      double = double('Mock Customer')
      allow(double).to receive(:name).and_return('Bob')
      allow(Customer).to receive(:find).and_return(double)

      customer = Customer.find
      expect(customer.name).to eq('Bob')
    end

    it 'allows stubbing database calls with many mock object' do
      class Customer
        attr_accessor :name
        def self.all
          #database query
        end
      end

      c1 = double('First Customer', name: 'John')
      c2 = double('Second Customer', name: 'Mary')

      allow(Customer).to receive(:all).and_return([c1, c2])

      customers = Customer.all
      expect(customers[1].name).to eq('Mary')
    end
  end
end
