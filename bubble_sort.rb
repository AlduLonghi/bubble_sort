
def bubble_sort(arr)
  arr.length.times do
    i = 0
    while i < arr.length - 1
      if arr[i] > arr [i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      else
        arr = arr
      end
      i += 1
    end
  end
  print "#{arr}\n"
end

 bubble_sort([2, 7, 5, 1, 10, 5, 39, 20, 6, 8, 17])


def bubble_sort_by(arr)
  arr.length.times do
    i = 0
    while i < arr.length - 1 
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      else
        arr = arr
      end
      i += 1
    end
  end
  print "#{arr}\n"
end

bubble_sort_by([2, 7, 5, 6, 1, 67, 34]) do |left, right|
  left - right
end
