# Sort the words in a given sentence

# Problem Statement

# Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order, by length.
# Let's not treat the punctuation marks any different than other characters and assume that we
# will always have single space to separate the words.

# Example: Given a string "Sort words in a sentence", it should return "a in Sort words sentence".

# NOTE: You can use the sort method to sort an array. Try the documentation at ruby-lang to know more about sort.

def sort_string(string) = string.split.sort_by(&:length).join(' ')

p sort_string('Awesome I am')
