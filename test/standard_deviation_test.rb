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

  def test_subtract_each_integer_by_average
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)


    assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4], deviation.subtracted_ages
  end

  def test_square_each_subtrated_number
    ages = [24, 30, 18, 20, 41]
    deviation = StandardDeviation.new(ages)

    assert_equal [6.76, 11.56, 73.96, 43.56, 207.36], deviation.squared_numbers
  end
end
