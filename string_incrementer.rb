=begin
Your job is to write a function which increments a string, to create a new string.

    If the string already ends with a number, the number should be incremented by 1.
    If the string does not end with a number. the number 1 should be appended to the new string.

Examples:

foo -> foo1

foobar23 -> foobar24

foo0042 -> foo0043

foo9 -> foo10

foo099 -> foo100

Attention: If the number has leading zeros the amount of digits should be considered.
=end

def increment_string(str)
   if str.match?(/[0-9]/)
      x = str.split('').last(1)
      y = x[0].to_i
      z = y += 1
      puts str.slice(0...str.length-1) + z.to_s
    else
      puts str << "1"
    end
end

increment_string("foobar23")
increment_string("foo099")
