
def palindrome_permutation?(string)
  palindrome_hash = {}
  result_array = []

  string.each_char do |char|
    if palindrome_hash[char] 
      palindrome_hash[char] += 1
    else 
      palindrome_hash[char] = 1
    end
  end

  string.each_char do |char|
    if palindrome_hash[char].odd?
      result_array << char
    end
  end

  return result_array.length <= 1
end