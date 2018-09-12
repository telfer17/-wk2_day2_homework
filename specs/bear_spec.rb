require('minitest/autorun')
require('minitest/rg')
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < Minitest::Test

  def setup
    fish = Fish.new("Nemo")
    @river = River.new("Nile", [fish])

    @bear = Bear.new("Yogi", "Polar Bear")

  end

  def test_bear_name()
    assert_equal("Yogi", @bear.bear_name())
  end

  def test_bear_type()
    assert_equal("Polar Bear", @bear.type())
  end

  def test_number_of_fish_in_stomach()
    assert_equal(0, @bear.stomach())
  end

  def test_eat_from_river()
    # act
    @bear.eat_from_river(@river)
    # assert
    assert_equal(0, @river.fish_count())
    assert_equal(1, @bear.stomach_count())
  end

  def test_bear_roar()
    assert_equal("Roaarrr", @bear.roar())
  end



end
