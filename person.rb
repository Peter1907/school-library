require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age?
  end

  def add_rental(book, date)
    @rentals << Rental.new(date, book, self)
  end

  def add_full_rental(rental)
    @rentals << rental
  end

  private

  def of_age?
    @age >= 18
  end
end
