def bubble_sort (array)
	n = array.length-2
	sorted = false
	while !sorted
		sorted = true
		(0..n).each do |index|
			if yield(array[index], array[index+1]) > 0
				array[index], array[index+1] = array[index+1], array[index]
				sorted = false
			end
		end
		n -= 1
	end
	array
end

array1 = [5]
array2 = [1,2,3,4,5]
array3 = [7,6,5,4,3,2,1]
array4 = [4,9,2,9,4,5,1]
array5 = [100,75,78,79,21,82,17,0,46,91,-1,56]
array6 = ["hey", "hello", "hi"]
puts array1.inspect
puts bubble_sort(array1){|left, right| left - right}.inspect
puts array2.inspect
puts bubble_sort(array2){|left, right| left - right}.inspect
puts array3.inspect
puts bubble_sort(array3){|left, right| left - right}.inspect
puts array4.inspect
puts bubble_sort(array4){|left, right| left - right}.inspect
puts array5.inspect
puts bubble_sort(array5){|left, right| left - right}.inspect
puts array6.inspect
puts bubble_sort(array6){|left, right| left.length - right.length}.inspect

