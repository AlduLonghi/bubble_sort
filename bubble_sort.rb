=begin 
We have to build a method that takes an array as a parameter. 
Inside the method we have to loop through the array and compare two of its elements to see which one is bigger. 
If the one on the left is bigger than the one on the right, the elements swap. If not they stay the same. 
Repeat this until we have the entire array sorted from the smallest to the biggest number.
def bubble_sort(arr)
    arr.length.times {
    i = 0
    while i < arr.length - 1
      if arr[i] > arr [i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
      else
        arr = arr
      end
      i+= 1
    end
}
   print arr
end
 bubble_sort([2, 7, 5, 1, 10, 5, 39, 20, 6, 8, 17])
=end

 def bubble_sort_by(arr)
    arr.length.times {
      i = 0
      while i < arr.length - 1 
        if yield > 0 
            arr[i], arr[i+1] = arr[i+1], arr[i]
        else
          arr = arr
        end
      i += 1
      end
    }
end

bubble_sort_by([2, 7, 5]) do |left,right|
    left - right
end