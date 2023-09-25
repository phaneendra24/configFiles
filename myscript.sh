#!/bin/bash

# Check if the user provided a Java source file as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <Java source file>"
  exit 1
fi

# Get the Java source file name from the command line argument
java_file="$1"

# Extract the base name of the Java file (without the extension)
base_name=$(basename "$java_file" .java)

# Compile the Java program
echo "Compiling $java_file..."
javac "$java_file"

# Check if the compilation was successful
if [ $? -eq 0 ]; then
  # Run the Java program
  echo "Running $base_name..."
  java "$base_name"
else
  echo "Compilation failed."
fi
