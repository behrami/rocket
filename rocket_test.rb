require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @Rocket = Rocket.new
    @myRocket = Rocket.new(
                          {name: 'Behram', colour: 'Red', flying: true})
  end

  def test_lift_off_initialize
    assert @Rocket.lift_off
  end

  def test_lift_off_myRocket
    refute @myRocket.lift_off
  end
  # ----------------------------

  def test_land_initialize
    refute @Rocket.land
  end

  def test_land_myRocket
    assert @myRocket.land
  end
  # ----------------------------

  def test_status_initialize
    name = @Rocket.name
    actual_value = @Rocket.status
    expected_value = "Rocket #{name} is ready for lift off!"
    assert_equal(expected_value, actual_value)
  end

end
