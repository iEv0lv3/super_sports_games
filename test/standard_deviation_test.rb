require 'minitest/autorun'
require 'minitest/pride'
require './lib/standard_deviation'

class StandardDeviationTest < Minitest::Test

  def test_sum_of_ages
    ages = [24, 30, 18, 20, 41]

    assert_equal 133, ages.sum
  end

  def test_total_number_of_ages
    ages = [24, 30, 18, 20, 41]

    assert_equal 5, ages.count
  end
end
