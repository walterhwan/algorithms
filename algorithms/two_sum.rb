def bad_two_sum?(arr, tgt)  # time O(n^2) space O(1)
  arr.combination(2) do |x, y|
    return true if x + y == tgt
  end
  false
end

def okay_two_sum?(arr, tgt) # Time: O(n log n) Space: O(1)
  arr = arr.sort
  i = 0
  j = arr.length - 1

  while i < j
    case (arr[i] + arr[j]) <=> tgt
    when -1
      i += 1
    when 0
      return true
    when 1
      j -= 1
    end
  end

  false
end

def two_sum?(arr, tgt) #time and space O(n)
  hash = Hash.new(0)
  arr.each do |el|
    return true if hash.key?(el)
    hash[tgt - el] = el
  end

  false
end



arr = (0..100000000).to_a
p two_sum?(arr, 6234567) # => should be true
p two_sum?(arr, 945) # => should be false
