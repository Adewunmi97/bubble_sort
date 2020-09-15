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

def bubble_sort_by(arr)
  sorted_arr = arr
  status = 0

  while status
    status = false
    (0...arr.length - 1).each do |i|
      next unless yield(sorted_arr[i], sorted_arr[i + 1]).positive?

      temp = sorted_arr[i]
      sorted_arr[i] = sorted_arr[i + 1]
      sorted_arr[i + 1] = temp
      status = true
    end
  end

  sorted_arr
end

print bubble_sort_by(%w[hi hello hey aaaaaaa b CCC ddddd]) { |left, right|
  left.length - right.length
}
