fib = (n) ->
	return n if n <= 1
	return fib(n - 1) + fib(n - 2)

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# FOR
console.log 'Fibonacci'
console.log fib(n) for n in arr

# MAP
plus_one = (n) -> n + 1

arr_plus_one = (plus_one(n) for n in arr)
console.log 'Plus one'
console.log n for n in arr_plus_one

# SELECT
more_than_5 = (n for n in arr when n > 5)
console.log 'More than 5'
console.log n for n in more_than_5

# OF
obj = { one: 1, two: 2}
console.log "#{key} -> #{val}" for key, val of obj

# AND/OR
obj or= {} # this would recognize 0, '', null as false
obj ?= {} # this would not

# Destructuring assignments
someobj = { a: "a's val", b: "b's val" }
{a, b} = someobj
console.log "a is #{a}, b is #{b}"
