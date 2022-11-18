class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def add_rental(person, date)
    @rentals << Rental.new(date, self, person)
  end

  def add_full_rental(rental)
    @rentals << rental
  end
end
