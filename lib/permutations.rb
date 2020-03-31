
def permutations?(string1, string2)
  permutations_hash = {}

  string1.each_char do |char|
    if permutations_hash[char]
      permutations_hash[char] += 1
    else
      permutations_hash[char] = 1
    end
  end

  string2.each_char do |char|
    if permutations_hash[char] && permutations_hash[char] > 0
      permutations_hash[char] -= 1
    else
      return false
    end
  end
  
  return permutations_hash.values.all?(0)
end