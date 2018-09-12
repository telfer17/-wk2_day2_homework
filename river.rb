class River

  attr_reader :river_name

  def initialize(river_name, stock)
    @river_name = river_name
    @stock = stock
  end

  def fish_count()
    return @stock.length
  end

  def add_fish(fish)
    @stock.push(fish)
  end

  def remove_fish()
    return @stock.pop()
  end

end
