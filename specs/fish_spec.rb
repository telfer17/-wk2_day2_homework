require('minitest/autorun')
require('minitest/rg')
require_relative("../fish")

class FishTest < Minitest::Test

  def setup
    @fish = Fish.new("Nemo")
  end

  # need attr_reader or getter method
  def test_fish_name()
    assert_equal("Nemo", @fish.name)
  end

end
