def bubble_sort_1(arr)
  sorted_arr = arr

  for i in 0...arr.length - 1
    for j in 0...arr.length - 1

      next unless sorted_arr[j] > sorted_arr[j + 1]

      temp = sorted_arr[j]
      sorted_arr[j] = sorted_arr[j + 1]
      sorted_arr[j + 1] = temp
      end
  end

  sorted_arr
end

def bubble_sort_2(arr)
  sorted_arr = arr
  swape = 0

  while swape
    swape = false
    (0...arr.length - 1).each do |i|
      next unless sorted_arr[i] > sorted_arr[i + 1]

      temp = sorted_arr[i]
      sorted_arr[i] = sorted_arr[i + 1]
      sorted_arr[i + 1] = temp
      swape = true
    end
  end

  sorted_arr
end

print bubble_sort_2([4, 3, 78, 2, 0, 2])
