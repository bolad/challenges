=begin
	
You probably know the "like" system from Facebook and other pages. People can "like" blog posts,
pictures or other items. We want to create the text that should be displayed next to such an item.

Implement a function likes :: [String] -> String, which must take in input array, containing the 
names of people who like an item. It must return the display text as shown in the examples:

likes [] // must be "no one likes this"
likes ["Peter"] // must be "Peter likes this"
likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"
	
=end

def likes(names)
	len = names.length
	case 
	when len == 0
		puts "no one likes this"
	when len == 1
		puts "#{names[0]} likes this "
	when len == 2
		puts "#{names.join(" and ")} like this"
	when len == 3
		puts "#{names[0]}, #{names[1]} and #{names[2]} like this"
	when len > 3
		puts "#{names[0]}, #{names[1]} and #{len - 2} others like this"
	end
end

#likes [] 
#likes ["Peter"] 
likes ["Jacob", "Alex"] 
#likes ["Max", "John", "Mark"] 
#likes ["Alex", "Jacob", "Mark", "Max"]
