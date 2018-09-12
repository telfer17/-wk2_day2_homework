class Bear

  attr_reader :bear_name, :type, :stomach

  def initialize(bear_name, type)
    @bear_name = bear_name
    @type = type
    @stomach = []
  end

  def stomach()
    return @stomach.length()
  end

  def stomach_count()
    return @stomach.count()
  end

  def eat_from_river(river)
    # get a fish from the river
    fish = river.remove_fish()

    # add fish to bear's stomach
    if fish != nil
      @stomach.push(fish)
    end
  end

  def roar()
    return "Roaarrr"
  end



end
