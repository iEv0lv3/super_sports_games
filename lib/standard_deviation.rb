# ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
class StandardDeviation
  attr_reader :ages, :sum_of_ages, :number_of_ages, :average_of_ages, :subtracted_ages, :squared_numbers

  def initialize(ages)
    @ages = ages
    @sum_of_ages = calculate_sum_of_ages
    @number_of_ages = count_number_of_ages
    @average_of_ages = calculate_average_of_ages
    @subtracted_ages = subtract_each_integer_by_average
    @squared_numbers = square
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

  def subtract_each_integer_by_average
    subtracted_nums = []
    self.ages.each do |age|
      subtracted_nums << (age - self.average_of_ages).round(1)
    end
    subtracted_nums
  end

  def square
    squared_numbers = []
    self.subtracted_ages.each do |num|
      squared_numbers << (num ** 2).round(2)
    end
    squared_numbers
  end
end
# When you find the standard deviation, print it out
