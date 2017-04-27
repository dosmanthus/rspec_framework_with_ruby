class Cat

  attr_accessor :name, :gender, :color
  attr_reader :age
  attr_writer :habits

  def initialize(options={})
    self.name = options[:name] || 'Bob'
    self.gender = options[:gender] || 'unknown'
    self.color = options[:color] || 'unknown'
    @age = 4
  end

  def self.colors
    ['white', 'black', 'yellow', 'grey']
  end

  def profile
    "#{self.name} #{self.age.to_s} years old (#{self.color})"
  end

end
