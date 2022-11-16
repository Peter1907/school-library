require './nameable'

class Decorator < Nameable
  def initialize(namable)
    super()
    @namable = namable
  end

  def correct_name
    @namable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    super.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    if super.length > 10
      super[0..9]
    else
      super
    end
  end
end
