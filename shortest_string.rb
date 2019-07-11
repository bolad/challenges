# find and return the shortest string in an array

def shortest_string(str)
	puts str.sort_by(&:length)[0]
end

shortest_string(["stan", "mikey", "yaa"])