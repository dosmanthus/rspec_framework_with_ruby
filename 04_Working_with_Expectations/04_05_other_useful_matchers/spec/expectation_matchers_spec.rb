describe 'Expectation Matchers' do
  describe 'other useful matchers' do
    it 'will match strings with a regex' do
      string = 'The order has been received.'
      expect(string).to match(/order(.+)received/)

      expect('123').to match(/\d{3}/)
      expect(123).not_to match(/\d{3}/)

      email = 'peyton@example.com'
      expect(email).to match(/\A\w+@\w+\.\w{3}\Z/)
    end
    it 'will match object types' do
      expect('test').to be_instance_of(String)
      expect('test').to be_an_instance_of(String)

      expect('test').to be_kind_of(String)
      expect('test').to be_a_kind_of(String)
      expect('test').to be_a(String)

      expect([1, 2, 3]).to be_an(Array)
    end
    it 'will match match objects with #respond_to' do
      string = 'test'
      expect(string).to respond_to(:length)
      expect(string).not_to respond_to(:sort)
    end
    it 'will match class instances with #have_attributes' do
      class Cat
        attr_accessor :age, :color, :gender
      end

      cat = Cat.new
      cat.age = 3
      cat.color = 'yellow'
      cat.gender = 'female'

      expect(cat).to have_attributes(color: 'yellow')
      expect(cat).to have_attributes(color: 'yellow', age: 3, gender: 'female')
    end
    it 'will match anything with satisfy' do
      expect(10).to satisfy do |value|
        (value > 5) && (value <= 10) && (value % 2 == 0)
      end
    end
  end
end
