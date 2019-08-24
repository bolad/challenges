# 1  Sum of the two smallest numbers in array
def sum_two_smallest_numbers(numbers)
  numbers.sort!
  return numbers[1] + numbers[0]
end

# 2 Write a function, persistence, that takes in a positive parameter num and returns
#   its multiplicative persistence, which is the number of times you must multiply the
#   digits in num until you reach a single digit
def persistence(num)
	count = 0
	while num.to_s.length > 1
		num_array = num.to_s.split(" ")
		count += 1
		num = num_array.inject {|x, y| x.to_i * y.to_i}
	end
	return count
end

#3 Reject all array strings (names) that dont have the length of four, whom are your friends
def reject_name(friends)
  print friends.reject { |a| a.length != 4 }
end

#4 Determine if a number is prime
def isPrime(num)
	if num < 2
		return false
	end

	for i in 2..(num - 1)
		if num % i == 0
			print false
		end
	end
	print true
end

=begin
Alternatives
** def isPrime?(num)
	 (2..num/2).none?{|i| num % i == 0}
   end


=end

#isPrime(7)

#5  Return sum, of multiples of 3 and 5 up to (number)
def solution(num)
	array = Array.new
	for x in 1..num-1
		if x % 3 == 0 || x % 5 == 0
			array.push(x)
		end
	end
	return array.inject{|sum, x| sum + x}
	#print array.inject(:+)
end

solution(55)

#6
=begin

An anagram is a word or phrase formed by rearranging the letters of a different
word or phrase, typically using all the original letters exactly once. For example,
binary can be rearranged into brainy.

Write a function that will find all the anagrams of a word from a list.
You will be given two inputs a word and an array with words. You should
return an array of all the anagrams or an empty array if there are none.

=end

def anagram(word, words)
	words.each {|w| w.chars.sort.join == word.chars.sort.join}
end

#7 Is number even or odd
def even_or_odd(num)
	print num.even? ? "Even" : "Odd"
end

#even_or_odd(5)

#8 Find the new value in an array of integers, when provided the average of integers that needs to be attained
def new_value(arr, avg)
	if arr == [] then total = 0 else total = arr.inject(:+) end
	new_number = (arr.length + 1) * avg - total
	if new_number > 0
		puts new_number.ceil
	else
		raise ArgumentError, "Expected average is too low"
	end
end

#new_value([2,5,4], 3)

#9 Return an array of integers from 1 to n
def one_to_n(n)
	print int_array = [*1..n]
	#[*(1..n)]
end

#one_to_n(20)

#10 Return an array that counts positive numbers and sum negative numbers in a given array
def count_positive_sum_negative(arr)
	positives, negatives = arr.partition(&:positive?) # or arr.partition {|x| x.psitive?}
	print [positives.length, negatives.inject(&:+)]
end

#count_positive_sum_negative([1, 2, 4, -5, 9, -10])

#11 Replace all vowels with '!'
def replace_vowels(str)
	print str.gsub(/[aeiouAEIOU]/, '!')
end

#replace_vowels("Michael")

#12 Remove smallest and largest values from array and get the sum of whats left
def sum_array(arr)
	if arr.kind_of?(Array) and arr.length > 2
		print arr.inject(&:+) - arr.min - arr.max
	else
		print 0
	end
end

#sum_array([2, 5, 29, 3, 90])

#13 Take 2 strings and remove all unique characters, then sort the new string alphabetically
def remove_unique(str1, str2)
	str3 = str1 + str2
	target = Array.new
	str3.split(' ').each {|x| target << x unless target.include?(x)}
	print target.sort.join(' ')

	# alternate solution: return (str1 + str2).chars.uniq.sort.join
end

#14 Return sum of positive integers in array
def sum_positives(arr)
	positives, negatives = arr.partition(&:positive?)
	print positives.inject(&:+)

	#alternate solution: arr.select {|x| x > 0}.reduce(0, :+)
end

#sum_positives([1, 2, 3, -6])

#15  Take a number and seperate the digits, push into an array, in reversed order
def digitize(n)
  n.to_s.chars.reverse.map(&:to_i)
end

#16  Create a string representing a dollar amount from an integer or float
def format_money(amount)
  print '$%.2f' % amount
end

#format_money(2000)


#17 Find the value of the nth digit of a number
def nth_digit(num, nth)
	puts nth <= 0 ? -1 : num.to_s.split('')[nth-1].to_i
end

#nth_digit(23456, 2)

#18  Concatenate two arrays and sorted uniquely
def merge_arrays(a, b)
  print (a | b).sort
end

#merge_arrays([1, 3, 5], [1, 4, 2])

#19  Remove all odd numbers from array
def remove_odd_numbers_from_array(arr)
  arr.reject(&:odd?)
end

#20 Delete every other element in an array
def every_other_element(arr)
	a = Array.new
	arr.map.with_index { |element, index| index % 2 == 0 ? a << element : element }
	print a

	#Alternative solution: arr.select.with_index {|_, index| index.even?}
end

#every_other_element([2, 5, 9, 45, 90, 3])

#21 Make sure a pizza can be devided so that 2 people can each have an even number of slices
def even_slices(slices)
	slices > 2 && slices.even?
end

#22 Find the number of times a character is repeated in a string
def num_of_times(str, char)
	puts str.downcase.chars.count(char.downcase)
end

#num_of_times("hipopotemus", 'o')

#23  Find the maximum difference in length between 2 strings in 2 different arrays
def max_diff(arr1, arr2)
	arr1.empty? || arr2.empty? ? -1 : arr2.max_by(&:length).length - arr1.min_by(&:length).length
end

#24 Extract numbers from a string and find the sum
def number_extract(str)
	puts str.gsub(/[^0-9]/, ' ').split('').map(&:to_i).inject(:+)
end

#number_extract("sta5fr9to104ht")

#25 Count total number of duplicate characters in a string
def count_duplicate(str)
	puts str.each_char.group_by(&:itself).count {|_, char| char.length > 1}
	#Alternate solution: ('a'..'z').count {|char| str.downcase.count(char) > 1}
end

#count_duplicate("philadelphia")

#26 Count the number of occurence of each character in a string and group them in a hash
def count_char(str)
	puts str.each_char.group_by(&:itself).map {|k, v| [k, v.count]}.to_h
end

#count_char("philadelphia")

#27 Count only characters in a string which occur more than once
def count_duplicate_hash(str)
	 puts str.each_char.group_by(&:itself).map {|k, v| [k, v.count]}.reject {|k, v| v < 2}.to_h
end

#count_duplicate_hash("philadelphia")

=begin
#28 You have to search all numbers from  1 to a given number x, inclusive
that have the given digit d in it. The value of d will always be between 0 - 9. The value of x
will always be greater than 0. You have to return as an array the count of these numbers,their sum
and their product.
=end
def numbers_with_digit(x, d)
	result = []
	(1..x). each do |num|
		result << num if num.to_s.include?(d.to_s)
	end
	p result
	if result.size == 0
		[0, 0, 0]
	else
		p [result.size, result.inject(:+), result.inject(:*)]
	end

end

#numbers_with_digit(24, 3)

#29 Write a function which removes all non-digit characters from a string combine the remaining into a number.
#E.g "hell5o wor6ld" -> 56
def remove_non_digits(str)
	puts str.scan(/\d/).join('').to_i
end

#remove_non_digits("hell5o wor6ld")

#30 Given a string containing a list of integers separated by commas,
#   write the function string_to_int_list(str) that takes said string and returns
#   a new list containing all integers present in the string, preserving the order.
def string_to_int_list(str)
	p str.split(',').map(&:to_i).compact
end

#string_to_int_list("1, 2, 3, 4")

#31 Write a function that returns the century for the given year (round up if necessary)
def century_from_year(year)
	puts year % 10 == 0 ? year / 100 : year / 100 + 1
end

#century_from_year(2018)

#32 Sort a string of words alphabetcally(case insensitive), return the first string with "***" between its letters
def sort_and_star(str)
	puts str.downcase.split(' ').sort[0].chars.join('***')
end

#sort_and_star("Hello my name is anthony")

#33 "The Mean of Two Means" - . The function should return the mean between the mean of the the first
#   x elements of the array and the mean of the last y elements of the array.

def mean_of_two_means(arr, x, y)
	if x < 2 || y < 2 || arr.size < x + y
		return -1
	else
		mean = (arr[0..(x-1)].inject(:+)/x.to_f + arr[-y..-1].inject(:+)/y.to_f) / 2.0
	end
	print mean
end

#mean_of_two_means([2, 4, 8, 10, 3, 24, 7, 30], 2, 4)

#34 Write a single line of Ruby code that prints the Fibonacci sequence of any length as an array.
def fibonacci_sequence(x, y)
  (x..y).inject([0, 1]) {|fib| fib << fib.last(2).inject(:+)}
end

#fibonacci_sequence(1, 20)

#35 Write a function that sorts the keys in a hash by the length of the key as a string.
def sort_by_key_length(hash)
  #puts hash.keys.map(&:to_s).sort_by(&:length)
  puts hash.keys.collect(&:to_s).sort_by {|key| key.length}
end

sort_by_key_length({ abc: 'hello', 'another_key' => 123, 4567 => 'third' })
