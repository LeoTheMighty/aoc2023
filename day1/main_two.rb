require_relative '../helper'

TEST_SOLUTION = '336'.freeze
NUMBERS = %w[0 1 2 3 4 5 6 7 8 9]
NUMBER_WORDS = %w[zero one two three four five six seven eight nine].freeze
REVERSE_NUMBER_WORDS = NUMBER_WORDS.map(&:reverse)

def get_solution(input)
  sum = 0
  lines = input.split("\n")

  lines.each do |line|
    puts line

    least_index = 9_999_999_999
    most_index = -1
    c1 = ''
    c2 = ''
    NUMBER_WORDS.each_with_index do |word, i|
      index = line.index(word)
      rindex = line.rindex(word)
      next unless index

      puts "\"#{word}\" is at #{index}"
      if index < least_index
        least_index = index
        c1 = i.to_s
      end
      if rindex > most_index
        most_index = rindex
        c2 = i.to_s
      end
    end
    NUMBERS.each_with_index do |word, i|
      index = line.index(word)
      rindex = line.rindex(word)
      next unless index

      puts "\"#{word}\" is at #{index}"
      if index < least_index
        least_index = index
        c1 = i.to_s
      end
      if rindex > most_index
        most_index = rindex
        c2 = i.to_s
      end
    end

    puts c1 + c2
    sum += (c1 + c2).to_i
  end

  sum
end

def main
  test_solution = get_solution(get_input('day1/test_input2.txt'))&.to_s
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
