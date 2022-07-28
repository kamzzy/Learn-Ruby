# frozen_string_literal: true

require './remover'
require './foods'

# Animal class has many-to-many relationship with vet and its done through visits
class Animal
  attr_accessor :name
  attr_reader :id, :type, :number_of_legs, :owner, :visits

  def initialize(type, number_of_legs, name = 'unknown')
    @id = Random.rand(1..1000)
    @name = name
    @no_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new
    @visits = []
  end

  def speak
    'grrrr'
  end

  def remove_legs
    remover = Remover.new
    @number_of_legs = remover.decrease(@number_of_legs)
  end

  def likes_food?(food)
    @liked_food.is_liked?(food)
  end

  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?(self)
  end
end

animal1 = Animal.new('dog', 4, 'Rex')
animal2 = Animal.new('spider', 8, 'Wilma')

animal1.speak
animal2.speak
