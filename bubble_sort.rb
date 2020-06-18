def bubble_sort(array)
  n = array.count
  is_sorted = false

  while (!is_sorted) do
    is_sorted = true
    #one loop through the whole array n-1 times
    (n - 1).times do |i|
      if array[i] > array [i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        is_sorted = false
      end
    end
  end

  array
end


test = [4,3,78,2,0,2]
p test
p bubble_sort(test)
