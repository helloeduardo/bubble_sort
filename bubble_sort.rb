def bubble_sort(array)
  n = array.count
  is_sorted = false

  until is_sorted do
    is_sorted = true
    last_element_index = n - 1
    #one loop through the whole array n-1 times
    last_element_index.times do |i|
      if array[i] > array [i + 1]
        #swap elements
        array[i], array[i + 1] = array[i + 1], array[i]
        is_sorted = false
      end
    end
    last_element_index -= 1
  end

  array
end

p "Enter a list of numbers to be sorted (separated by spaces)"
input = gets.chomp.split.map { |i| i.to_i  }
p "Your unsorted array is: #{input}"
p "Your sorted array is: #{bubble_sort(input)}"
