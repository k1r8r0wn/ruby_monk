# Palindromes

# Problem Statement

# Given a sentence, return true if the sentence is a palindrome.

# You are supposed to write a method palindrome? to accomplish this task.

# Note Ignore whitespace and cases of characters.

# Example: Given "Never odd or even" the method should return true

def palindrome?(sentence)
  sentence = sentence.downcase.gsub(' ', '')
  sentence == sentence.reverse
end

p palindrome?('Never odd or even')
