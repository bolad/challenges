=begin
Complete the method/function so that it converts dash/underscore delimited words into camel casing.
The first word within the output should be capitalized only if the original word was capitalized
(known as Upper Camel Case, also often referred to as Pascal case).
Examples

to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"

to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"
=end

def to_camel_case(str)
    puts str.split('-').each_with_index.map{ |word,index| index == 0 ? word : word.capitalize }.join
    #puts str.gsub(/[_-](.)/) {"#{$1.upcase}"}
end

to_camel_case("The-stealth-warrior")
to_camel_case("the-stealth-warrior")
