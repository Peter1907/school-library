require './book'
require './person'

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  def update_rentals
    @book.add_full_rental(self)
    @person.add_full_rental(self)
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
