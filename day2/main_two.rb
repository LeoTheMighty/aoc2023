# frozen_string_literal: true

require_relative '../helper'

DIR = File.dirname(__FILE__).split('/')[-1]
TEST_SOLUTION = '2286'

def get_solution(input)
  sum = 0
  get_lines(input).each do |line|
    id = line.split(':')[0].split(' ')[1].strip.to_i
    min_cubes = {
      'red' => 0,
      'green' => 0,
      'blue' => 0
    }
    line.split(':')[1].split(';').each do |game|
      game.split(',').each do |pull|
        num = pull.strip.split(' ')[0].to_i
        color = pull.strip.split(' ')[1]

        min_cubes[color] = [min_cubes[color], num].max
      end
    end

    sum += (min_cubes['red'] * min_cubes['green'] * min_cubes['blue'])
  end

  sum
end

def main
  test_solution = get_solution(get_input("#{DIR}/input_test2.txt"))&.to_s
  return unless assert_answer(test_solution, TEST_SOLUTION)

  real_answer = get_solution(get_input("#{DIR}/input.txt"))
  puts "Here's the answer: \n#{real_answer}"
end

main
