# frozen_string_literal: true

# class vet has a many to many relationship with animal and its done through visits
class Vet
  attr_reader :visits
  attr_accessor :name, :address

  def initialize(name, address)
    @name = name
    @address = address
    @visits = []
  end
end
