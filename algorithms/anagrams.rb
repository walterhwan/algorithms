def first_anagram(str1, str2)# time and space complexity O(n!)
  all_anagrams = str1.chars.permutation(str1.length).to_a
  all_anagrams.include?(str2.chars)

end

def second_anagram(str1, str2) # Time: O(n^2) Space: O(n)
  return false if str1.lenght != str2.length

  chars1 = str1.chars
  chars2 = str2.chars

  chars1.each do |char1|
    idx = chars2.index(char1)
    if idx
      chars2.delete_at(idx)
    end
  end

  chars2.empty?
end

def third_anagram(str1, str2) # Time: O(n log n) Space: O(n)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram(str1, str2) # Time: O(n) Space: O(n)
  hash = Hash.new(0)

  str1.chars.each do |char|
    hash[char] += 1
  end

  str2.chars.each do |char|
    hash[char] -= 1
  end

  hash.values.all? { |value| value == 0 }
end

p fourth_anagram("gizmo", "sally")    #=> false
p fourth_anagram("elvis", "lives")    #=> true
