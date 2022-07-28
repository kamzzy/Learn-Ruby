# frozen_string_literal: true

# A class
class NoFood
  def is_liked?(_food)
    false
  end
end

# A class
class DogFood
  def is_liked?(food)
    %w[meat vegetable fruit].member?(food)
  end
end

# A class
class SpiderFood
  def is_liked?(food)
    %w[insect bug].member?(food)
  end
end
