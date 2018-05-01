require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @Rocket = Rocket.new
    @myRocket = Rocket.new(
                          {name: 'Behram', colour: 'Red', flying: true})
  end

  def test_lift_off_initialize_returns_true
    assert @Rocket.lift_off
  end

  def test_lift_off_myRocket_returns_false
    refute @myRocket.lift_off
  end
  # ----------------------------

  def test_land_initialize_returns_false
    refute @Rocket.land
  end

  def test_land_myRocket_returns_true
    assert @myRocket.land
  end
  # ----------------------------

  def test_status_initialize
    # name = @Rocket.name
    @Rocket.name = 'Sean'
    actual_value = @Rocket.status
    expected_value = "Rocket Sean is ready for lift off!"
    assert_equal(expected_value, actual_value)
  end

  def test_status_myRocket
    actual_value = @myRocket.status
    expected_value = "Rocket Behram is flying through the sky!"
    assert_equal(expected_value, actual_value)
  end

end
