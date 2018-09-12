require('minitest/autorun')
require('minitest/rg')
require_relative("../river")
require_relative("../fish")

class RiverTest < Minitest::Test

  def setup
    # fish1 and stock could be local variables as we won't be testing them, we're testing the river
    @fish1 = Fish.new("Nemo")
    stock = [@fish1]
    @river = River.new("Nile", stock)
  end

  def test_river_name()
    assert_equal("Nile", @river.river_name)
  end

  def test_get_fish_count
    assert_equal(1, @river.fish_count())
  end

  def test_add_fish_to_river
    # arrange
    fish = Fish.new("Dora")
    # act
    @river.add_fish(fish)
    # assert
    assert_equal(2, @river.fish_count())
  end

  def test_remove_fish_from_river
    # don't have to arrange as this doesn't pull anything in
    returned_fish = @river.remove_fish()
    assert_equal(0, @river.fish_count())

    # fish.name uses the name variable from the fish class
    assert_equal("Nemo", returned_fish.name)
  end



end
