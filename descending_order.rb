#Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
#Examples:
#Input: 21445 Output: 54421
#Input: 145263 Output: 654321
#Input: 1254859723 Output: 9875543221

# My solution
def descending_order(n)
	split_up = n.to_s.chars.map(&:to_i)
	sorted = split_up.sort
	puts sorted.reverse.join.to_i
end

descending_order(273892)

# Best practices
# def descending_order(n)
	# n.to_s.chars.sort.reverse.joint.to_i
#end