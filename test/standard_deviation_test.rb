require 'minitest/autorun'
require 'minitest/pride'
require './lib/standard_deviation'

class StandardDeviationTest < Minitest::Test

  def test_sum_of_ages
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 133, deviation.sum_of_ages
  end

  def test_total_number_of_ages
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 5, deviation.count_number_of_ages
  end

  def test_average_of_ages
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal 26.6, deviation.average_of_ages
  end
end
