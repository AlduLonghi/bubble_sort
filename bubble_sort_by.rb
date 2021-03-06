# bubble_sort_by (accepting a block as a parameter)

def bubble_sort_by(arr)
  arr.length.times do
    i = 0
    while i < arr.length - 1
      yield(arr[i], arr[i + 1]).positive? ? (arr[i], arr[i + 1] = arr[i + 1], arr[i]) : (arr = arr)
      i += 1
    end
  end
  arr
end

sorted = bubble_sort_by([2, 7, 5, 6, 1]) do |left, right|
  left - right
end

puts sorted
