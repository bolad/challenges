=begin
  Given a string, find the length of the longest substring without repeating characters.

  Example:

  Input: "abcabcbb"
  Output: 3
  Explanation: The answer is "abc", with the length of 3.
=end

def length_of_longest_substring(str)

  #setup empty hash named map
  map = {}

  longest_length = 0
  current_length = 0

  #scan the string, when the current char is absent from the map, record the
  #index of current char by setting the map with map[char] = index, and also update
  #the current valid substring length and the longest length if necessary;
  str.each_char.with_index do |char, index|
    #if the current char is present in the map, then we should truncate the valid sub-string
    #to the last position of current character.
    if last_index = map[char]
      map.each do |key, value|
        map[key] = nil if value && value < last_index
      end
      current_length = index - last_index
    else
      current_length += 1
      longest_length = current_length if longest_length < current_length
    end
    map[char] = index
  end
  puts longest_length
end

length_of_longest_substring("abdcb")

#Alternate solution
# def length_of_longest_substring(str)
#     substr_arr = []
#     max_length = 0
#
#     str.chars.each do |char|
#     	substr_index = substr_arr.index(char)
#
#     	substr_arr = substr_arr[(substr_index + 1)..-1] if substr_index
#
#     	substr_arr << char
#
#     	max_length += 1 if substr_arr.length > max_length`
#
#     end
#
#     max_length
# end
