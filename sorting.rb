require 'pry'
test_array = [6, 3, 20, 12, 10, 2, 100, 99, -45, -20, 30]

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


