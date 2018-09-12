class Fish

  attr_reader :name

  def initialize(name)
    @name = name
  end

  # could use this instead of attr_reader
  #   def name
  #     return @name
  #   end

end
