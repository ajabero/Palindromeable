#  Palindromeable

Approach:
- The app takes a string and sorts it using a custom sorting method.
- The MapPairs algorithm checks the sorted string for pairs of identical characters in the string and returns false when more than one character appears in the string an odd number of items. Otherwise, it returns true.
- The algorithm optimizes for time complexity, and runs in O(n) time. 

Assumptions:
- Input string can only contain upper or lowercase alphabet characters, or spaces.
- Strings shorter than 3 characters always return false.

