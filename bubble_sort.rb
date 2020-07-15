# frozen_string_literal: true

# bubble_sort

def bubble_sort(arr)
  arr.length.times do
    i = 0
    while i < arr.length - 1
      if arr[i] > arr [i + 1]
        (arr[i], arr[i + 1] = arr[i + 1], arr[i])
      else arr = arr
      end
      i += 1
    end
  end
end

p bubble_sort([2, 7, 5, 1, 10, 5, 39, 20, 6, 8, 17])
