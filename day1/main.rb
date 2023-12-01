require_relative '../helper'

TEST_SOLUTION = '142'.freeze
NUMBER_WORDS = %w[one two three four five six seven eight nine].freeze

def get_solution(input)
  sum = 0
  lines = input.split("\n")

  lines.each do |line|
    puts line
    c1 = ''
    c2 = ''

    line.split('').each do |c|
      if %w[1 2 3 4 5 6 7 8 9 0].include?(c)
        c1 = c
        break
      end
    end
    line.split('').reverse.each do |c|
      if %w[1 2 3 4 5 6 7 8 9 0].include?(c)
        c2 = c
        break
      end
    end

    puts c1 + c2
    sum += (c1 + c2).to_i
  end

  sum
end

def main
  test_solution = get_solution(get_input('day1/test_input.txt'))&.to_s
  if test_solution == TEST_SOLUTION
    puts "Passes Test Case :)"
    puts "Here's the answer:"
    get_solution(get_input('day1/input.txt'))
  else
    puts "FAILED. IMAGINE THINKING THAT WOULD WORK"
    puts "Should be:"
    puts TEST_SOLUTION
    puts "Was unfortunately:"
    puts test_solution
    nil
  end
end

puts main
