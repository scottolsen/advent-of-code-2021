class Day_2
  def self.part_1(file)
    Part_1.new(file).run
  end

  def self.part_2(file)
    Part_2.new(file).run
  end

  def initialize(file)
    @file = file
    @depth = 0
    @horizontal = 0
    @aim = 0
  end

  def run
    data.each {|action, value| send(action, value.to_i)}
    @depth * @horizontal
  end

  def data
    @data ||= File.readlines(@file).map {|row| row.split(' ') }
  end

  def up(num)
    down(-num)
  end
end

class Part_1 < Day_2
  def forward(num)
    @horizontal += num
  end

  def down(num)
    @depth += num
  end

end

class Part_2 < Day_2
  def forward(num)
    @horizontal += num
    @depth += num * @aim
  end

  def down(num)
    @aim += num
  end
end

puts "Day 2 Part 1 = #{Day_2.part_1('day_2.txt')}"
puts "Day 2 Part 2 = #{Day_2.part_2('day_2.txt')}"
