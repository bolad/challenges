=begin
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.
=end

#Convert linked lists to arrays, convert to string, convert to integer. Add the result of both.
def add_two_numbers(l1, l2)
  (linked_list_to_array(l1).map(&:to_s).join.to_i + linked_list_to_array(l2).map(&:to_s).join.to_i).to_s.reverse.chars.map(&:to_i)
end

#convert linkedList to array
def linked_list_to_array(list)
  node = list
  queue = []

  while node
    queue.unshift(node.val)
    node = node.next
  end
  queue
end

add_two_numbers([2,4,3], [7,2,3])
