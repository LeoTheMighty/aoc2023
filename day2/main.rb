# frozen_string_literal: true

require_relative '../helper'

DIR = File.dirname(__FILE__).split('/')[-1]
TEST_SOLUTION = '8'

def get_solution(input)
  marbles = {
    'red' => 12,
    'green' => 13,
    'blue' => 14
  }
  sum = 0
  get_lines(input).each do |line|
    id = line.split(':')[0].split(' ')[1].strip.to_i
    valid = true
    line.split(':')[1].split(';').each do |game|
      game.split(',').each do |pull|
        num = pull.strip.split(' ')[0].to_i
        color = pull.strip.split(' ')[1]

        if num > (marbles[color] || 999_999_999)
          valid = false
          break
        end
      end

      break unless valid
    end

    sum += id if valid
  end

  sum
end

def main
  test_solution = get_solution(get_input("#{DIR}/input_test.txt"))&.to_s
  return unless assert_answer(test_solution, TEST_SOLUTION)

  real_answer = get_solution(get_input("#{DIR}/input.txt"))
  puts "Here's the answer: \n#{real_answer}"
end

main
