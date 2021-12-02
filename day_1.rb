class Day_1
  def self.part_1(file)
    new(file).part_1
  end

  def self.part_2(file)
    new(file).part_2
  end

  def initialize(file)
    @file = file
  end

  def numbers
    @numbers ||= File.readlines(@file).map(&:to_i)
  end

  def part_1
    count_increases(numbers)
  end

  def part_2
    every_three = numbers.each_cons(3).collect { |x| x.sum }
    count_increases(every_three)
  end

  def count_increases(data)
    data.map.with_index { |v,i| 1 if v > data[i-1] }.compact.sum
  end
end

puts "Day 1 Part 1 = #{Day_1.part_1('day_1.txt')}"
puts "Day 1 Part 2 = #{Day_1.part_2('day_1.txt')}"
