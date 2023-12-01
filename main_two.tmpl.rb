# frozen_string_literal: true

require_relative '../helper'

DIR = File.dirname(__FILE__).split('/')[-1]
TEST_SOLUTION = 'correct'

def get_solution(input)
  'incorrect'
end

def main
  test_solution = get_solution(get_input("#{DIR}/input_test2.txt"))&.to_s
  return unless assert_answer(test_solution, TEST_SOLUTION)

  real_answer = get_solution(get_input("#{DIR}/input.txt"))
  puts "Here's the answer: \n#{real_answer}"
end

main
