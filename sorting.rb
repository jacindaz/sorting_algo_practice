require 'pry'
test_array = [6, 3, 20, 12, 10, 2, 100, 99, -45, -20, 30]

def merge_sort(array)
  # Divide the unsorted array of size n, into n arrays of size 1
  # Note that each array of size 1 is considered sorted
  # Combine two sorted small arrays into one sorted combined array with the following steps
  # Create an empty, new array where the combined sorted elements will go
  # Compare the first elements of each small sorted array
  # Put the smaller element into the combined sorted array
  # Repeat step 3b until one small sorted array is empty
  # Put all of the remaining elements from the non-empty small array into the combined array
  # Repeat step 3 until there is only one array

  sorted_array = []
  array_max_index = array.length - 1

  loop_index = 0
  while loop_index <= array_max_index
    unsorted_number = array[loop_index]

    if loop_index == array_max_index && array_max_index % 2 == 0
      sorted_array << [unsorted_number]

    elsif loop_index != array_max_index
      number1 = unsorted_number
      number2 = array[loop_index + 1]

      if number1 < number2
        sorted_array << [number1, number2]
      elsif number1 > number2
        sorted_array << [number2, number1]
      end
    end

    loop_index += 2
  end

  puts "original array: #{array}"
  puts "sorted_array: #{sorted_array}"
  sorted_array
end
merge_sort(test_array)

def bucket_sort(array)
  # Create empty "buckets" that represent a range (ie. buckets for 1-5, 6-10,10-15 etc)
  # Scatter: Go over the original array, putting each object in its bucket.
  # Sort each bucket with a different sorting algorithm
  # Gather: Append all buckets together for one sorted array


end

def selection_sort(array)
  sorted_array = []

  array.length.times do
    minimum_element = array[0]

    array.each do |unsorted_number|
      if unsorted_number < minimum_element
        minimum_element = unsorted_number
      end
    end

    array.delete(minimum_element)
    sorted_array << minimum_element
  end

  sorted_array
end
selection_sort(test_array)

def bubble_sort(array)
  max_array_index = array.length - 1

  array.length.times do
    array.each_with_index do |value, index|
      item1 = array[index]
      item2 = array[index + 1]
      unless index == max_array_index
        if item1 > item2
          placeholder = item1
          array[index] = array[index + 1]
          array[index + 1] = placeholder
        end
      end
    end
  end

  array
end
# bubble_sort([99, 34, 50, 1000000, 2, -88])

def insertion_sort(array)
  sorted_array = [array[0]]

  array[1..-1].each do |number|
    sorted_array_max_index = sorted_array.length - 1
    sorted_array.each_with_index do |sorted_array_number, sorted_array_index|
      puts "\n============="
      puts "number: #{number}"
      puts "sorted_array_number: #{sorted_array_number}\n\n"

      puts "sorted_array_index: #{sorted_array_index}"
      puts "sorted_array: #{sorted_array}\n\n"

      puts "sorted_array_max_index: #{sorted_array_max_index}"
      puts "sorted_array[sorted_array_max_index + 1]: #{sorted_array[sorted_array_max_index + 1]}\n\n"

      puts "original array: #{array}"
      puts "=============\n"

      if number < sorted_array_number && sorted_array_index == 0 # is 3 < 6
        sorted_array.unshift(number)
        break
      elsif number > sorted_array_number && sorted_array_index == sorted_array_max_index
        sorted_array << number
        break
      elsif sorted_array_index != sorted_array_max_index
        if number > sorted_array_number && number < sorted_array[sorted_array_index + 1]
          sorted_array = sorted_array.insert(sorted_array_index + 1, number)
          break
        end
      end
    end
  end

  puts "\n============"
  puts "FINAL RESULT:"
  puts "sorted_array: #{sorted_array}"
  puts "============\n\n"

  sorted_array
end
# insertion_sort([6, 3, 20, 12, 10, 2, 100, 99, -45, -20, 30])


