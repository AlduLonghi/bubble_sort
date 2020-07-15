# frozen_string_literal: true

# bubble_sort

def bubble_sort(arr)
  arr.length.times do
    i = 0
    while i < arr.length - 1
      arr[i] > arr [i + 1] ? (arr[i], arr[i + 1] = arr[i + 1], arr[i]) : (arr = arr)
      i += 1
    end
  end
  print "#{arr}\n"
end

bubble_sort([2, 7, 5, 1, 10, 5, 39, 20, 6, 8, 17])

# bubble_sort_by (accepting a block as a parameter)

def bubble_sort_by(arr)
  arr.length.times do
    i = 0
    while i < arr.length - 1 
      yield(arr[i], arr[i + 1]).positive? ? (arr[i], arr[i + 1] = arr[i + 1], arr[i]) : (arr = arr)
      i += 1
    end
  end
  print "#{arr}\n"
end

bubble_sort_by([2, 7, 5, 6, 1]) do |left, right|
  left - right
end
