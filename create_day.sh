#!/bin/bash

# Create a module (arg 1: module name, arg 2: test input solution)
# "NAME SPECIFIED" - (make sure we don't overwrite one accidentally)
#   - mod.rs (just contains "pub mod solution")
#   - solution.rs (contains "pub fn print_solution() {}")
#   - input_test.txt (contains the test input data)

set -o noclobber

echo "Creating solution directory $1"
if [ ! -d "$1" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir "$1"
  cp "main.tmpl.rb" "$1/main.rb"
  cp "main_two.tmpl.rb" "$1/main_two.rb"
  touch "$1/input.txt"
  touch "$1/input_test.txt"
  touch "$1/input_test2.txt"
else
  echo "Directory already exists, aborting..."
fi
