require './person'

class Student < Person
  def initialize(name = 'Unknown', classroom)
    super(name)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
