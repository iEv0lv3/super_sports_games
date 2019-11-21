# ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
class StandardDeviation
  attr_reader :ages, :sum_of_ages, :number_of_ages, :average_of_ages

  def initialize(ages)
    @ages = ages
    @sum_of_ages = calculate_sum_of_ages
    @number_of_ages = count_number_of_ages
    @average_of_ages = calculate_average_of_ages
  end

  def calculate_sum_of_ages
    ages.sum
  end

  def count_number_of_ages
    ages.count
  end

  def calculate_average_of_ages
    sum_of_ages.to_f / number_of_ages.to_f
  end
end
# When you find the standard deviation, print it out
