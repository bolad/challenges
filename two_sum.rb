=begin
  Given an array of integers, return indices of the two numbers such that they add up to a specific target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.

  Example:

  Given nums = [2, 7, 11, 15], target = 9,

  Because nums[0] + nums[1] = 2 + 7 = 9,
  return [0, 1].
=end

def two_sum(nums, target)
  # # Get indices of all elements of nums array and put them in an array
  # all_array_indices = (0...nums.size).to_a
  #
  # # Generate all combinations of indices of each 2 elements and check if the sums of their values equal target
  # results = all_array_indices.combination(2).select {|first, last| nums[first] + nums[last] == target}
  # p results.first

  i = 0
  while i < nums.length
    j = i + 1
    while j < nums.length
      if nums[i] + nums[j] == target
        p [i, j]
      end
      j += 1
    end
    i += 1
  end
end

two_sum([2, 7, 11, 15], 9)
