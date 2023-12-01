def get_input(file_path)
  begin
    # Open the file and read its contents
    contents = File.read(file_path)
    return contents
  rescue StandardError => e
    # If an error occurs, print the error message
    puts "Error reading file: #{e.message}"
    return nil
  end
end

def get_input_lines(file_path)
  get_input(file_path)&.split('\n')
end

