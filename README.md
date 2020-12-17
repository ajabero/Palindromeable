#  Palindromeable

Approach:
- The app takes a string and sorts it using a custom sorting method.
- The MapPairs algorithm checks the sorted string for pairs of identical characters in the string and returns false when more than one character appears in the string an odd number of items. Or true otherwise.
- The algorithm optimizes for time complexity, and runs in O(n) time. 

Interface:
- Running the app lets a user type in a string to check if it's "palindromeable"
- The screen turns green with a "True" message if the string can have a palindrome, or red and "False" if it can't. 

Assumptions:
- Strings shorter than 3 characters always return false.

