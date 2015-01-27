insertionSort = (arr) ->
	for i in [1...arr.length] by 1
		x = arr[i]
		j = i
		while j > 0 and x < arr[j - 1]
			arr[j] = arr[j - 1]
			j -= 1
		arr[j] = x
	return arr

unsorted = [4,1,5,3,2]
console.log 'Before sort'
console.log unsorted

sorted = insertionSort(unsorted)
console.log 'After sort'
console.log sorted