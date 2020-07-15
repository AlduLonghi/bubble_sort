=begin 
We have to build a method that takes an array as a parameter. 
Inside the method we have to loop through the array and compare two of its elements to see which one is bigger. 
If the one on the left is bigger than the one on the right, the elements swap. If not they stay the same. 
Repeat this until we have the entire array sorted from the smallest to the biggest number.
=end

def bubble_sort(array)
    i = 0
    while i < array.length -1
      if array[i] > array [i+1]
        array[i], array[i+1] = array[i+1], array[1]
      else
        array = array
      end
      i+= 1
    end
end




 bubble_sort([2, 5, 7, 1 ,8, 3])