def intersection(list1, list2)
  nums_array = []
  nums_hash = {}

  list1.each do |nums|
    nums_hash[nums] = 0
  end

  list2.each do |nums|
    if nums_hash[nums]
      nums_array << nums
    end
  end

  return nums_array
end