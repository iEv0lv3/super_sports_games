# Your code here for calculating the standard deviation
class StandardDeviation
  attr_accessor :ages
  attr_reader :sum_of_ages, :number_of_ages, :average_of_ages, :subtracted_ages, :squared_numbers, :squared_numbers_sum, :squared_numbers_average, :answer

  def initialize(ages)
    @ages = ages
    @sum_of_ages = calculate_sum_of_ages
    @number_of_ages = count_number_of_ages
    @average_of_ages = calculate_average_of_ages
    @subtracted_ages = subtract_each_integer_by_average
    @squared_numbers = square
    @squared_numbers_sum = squared_sum
    @squared_numbers_average = average_squared_sum
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

  def squared_sum
    squared_numbers.sum.round(1)
  end

  def average_squared_sum
    (self.squared_numbers_sum / self.number_of_ages).round(2)
  end

  def answer
    Math.sqrt(squared_numbers_average).round(2)
  end
end
# When you find the standard deviation, print it out

ages = [24, 30, 18, 20, 41]
deviation = StandardDeviation.new(ages)
p deviation.answer
