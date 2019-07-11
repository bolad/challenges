#Write a function that sorts the keys in a hash by the length of the key as a string.

def order_by_key_length(hash)
puts hash.keys.map(&:to_s).sort_by(&:length)
end

order_by_key_length({ abc: 'hello', 'another_key' => 123, 4567 => 'third' })
