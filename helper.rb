# frozen_string_literal: true

def assert_answer(answer, solution)
  if answer == solution
    puts 'Passes Test Case :)'
    true
  else
    puts '!!!!!!!! FAILED. IMAGINE THINKING THAT WOULD WORK !!!!!!!!'
    puts "Should be: \n#{solution}"
    puts "Was unfortunately: \n#{answer}"
    false
  end
end

def get_input(file_path)
  # Open the file and read its contents
  File.read(file_path)
rescue StandardError => e
  # If an error occurs, print the error message
  puts "Error reading file: #{e.message}"
  nil
end

def get_input_lines(file_path)
  get_input(file_path)&.split("\n")
end

