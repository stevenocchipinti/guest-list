################################################################################
#
#                             Guest List Exercises
#                             --------------------
#
#
# This application reads a guest list from an exported JSON file and prints out
# the guests names and ages.
#
#
# Exercises:
#
#   1. For each guest, print a line of human readable text that describes the
#   guest. For example:
#
#     Lyndia Mericle was born in 1981
#     ...
#
#
#   2. Ignoring month and date, include an age approximation in the text output
#   for each guest. For example:
#
#     Lyndia Mericle is approximately 36 years old
#     ...
#
#
#   3. As this is a program for a night club, only print the people that are
#   over the age of 18 and ignore the people under age - they are not allowed in
#
#
#   4. Instead of ignoring the underage guests, print a message that makes it
#   clear they aren't allowed in. For example:
#
#     Errol Mayr is underage and NOT allowed in
#     ...
#
#
#   5. Instead of the output having a mix of over age and under age guests,
#   print all the over age guests first followed by a blank line, then a list
#   of all the under age guests. For example:
#
#     Lyndia Mericle is approximately 36 years old
#     ...
#
#     The following guests are underage and NOT allowed in:
#     - Errol Mayr (age: 10)
#     - ...
#
#
# Extension exercises:
#
#   1. Change the program to use a CSV file (guests.csv) instead of the JSON
#   file (guests.json)
#
#
################################################################################

require 'json'

file_contents = File.read("guests.json")
data = JSON.parse(file_contents)

data["guests"].each do |guest|
  puts guest
end
