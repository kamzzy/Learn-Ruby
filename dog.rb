# frozen_string_literal: true

require './animal'
require './foods'
# A dog class
class Dog < Animal
  def initialize(color, name = 'unknown')
    super('dog', 4, name)
    @color = color
    @liked_food = DogFood.new
  end

  def bring_a_stick
    "Here's your stick....."
  end

  def speak
    'woof,woof'
  end
end
