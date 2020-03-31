def intersection(list1, list2)
  nums_array = []
  nums_hash = {}

  list1.each do |num|
    nums_hash[num] = 0
  end

  list2.each do |num|
    if nums_hash[num]
      nums_array << num
    end
  end

  return nums_array
end