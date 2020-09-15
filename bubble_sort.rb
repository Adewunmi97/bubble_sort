def bubble_sort(arr)
  sorted_arr = arr
  status = 0

  while status
    status = false
    (0...arr.length - 1).each do |i|
      next unless sorted_arr[i] > sorted_arr[i + 1]

      temp = sorted_arr[i]
      sorted_arr[i] = sorted_arr[i + 1]
      sorted_arr[i + 1] = temp
      status = true
    end
  end

  sorted_arr
end

print bubble_sort([4, 3, 78, 2, 0, 2])
