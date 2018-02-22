def my_min(arr) # Time: O(n^2) Space: O(1)

  arr.each do |el1|
    return el1 if arr.all? { |el2| el1 <= el2 }
  end

end

def my_min_2(arr) # Time: O(n) Space: O(1)
  acc = arr[0]

  arr.each do |el|
    if acc > el
      acc = el
    end
  end
  acc
end

def largest_sub_sum(arr) # Timd: O(n^3) Space: O(n^2)
  sub_sums = []

  i = 0
  while i < arr.length
    j = i
    while j < arr.length
      sub_sums << arr[i..j].reduce(:+)
      j += 1
    end
    i += 1
  end

  sub_sums.max
end

def largest_sub_sum2(arr) # Time O(n), Space O(1)
  max_so_far = 0
  max_ending_here = 0

  arr.each do |el|
    max_ending_here += el
    max_ending_here = 0 if max_ending_here < 0
    max_so_far = max_ending_here if max_so_far < max_ending_here
  end

  max_so_far
end

list = [2, 3, -6, 7, -6, 7]
p largest_sub_sum2(list) # => -1 (from [-1])

#
#   list = [ 0, 3, 5, 4, -6, 10, 1, 90 ]
# p    my_min_2(list)  # =>  -5
