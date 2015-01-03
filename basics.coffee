# Single line comment

###
	Multi-line comment
	Ruby should have this, instead of =begin ... =end
###

local_var = 'this is a local variable'

exports.global_var = 'this is a global variable'

# Function without argument
func = ->  'foo'

# Function with arguments
add = (a, b) -> a + b

# Function with default arguments
add = (a = 1, b = 1) -> a + b

# Function with multiple arguments, cool huh..
sum = (nums...) ->
	total = 0
	nums.forEach (n) -> total += n
	total

# Function invocation
sum 1, 2, 3, 4, 5

# Literals
# with braces
foo = { bar: 1, baz: 1 }
# or without braces
foo = bar: 1, baz: 1
# or without comma
# newline replaces comma in this case
foo =
	bar: 1
	baz: 1

# Array
foo = [1, 2, 3]
foo = [
	1
	2
	3]
foo = [1, 2, 3,] # last comma is stripped

# Flow Control
# Parentheses are options
if true != false
	console.log('Logic!')

if true == true then console.log('Logic!')

if true == false then console.log('Insane!') else console.log('Logic!')

# Some ruby idion
console.log('Logic') if true == true

unless true
	console.log('False')

# 'IS' statement, equivalent to '==='
if true is true then console.log('Logic!')
# 'ISNT' statement
if true isnt true then console.log('Insane!')

# String interpolation
# Ruby-like
earn = sum 1, 2, 3, 4, 5
console.log("Earning is #{earn}")

# Loop and Comprehencesion
for i in [1, 2, 3, 4, 5]
	console.log(i)

# 'WHEN'
console.log(i) for i in [1, 2, 3, 4, 5] when i == 3

# 'OF'
names = swift: 'taylor', chou: 'jay'
console.log("#{firstname}, #{lastname}") for firstname, lastname of names

# while loop
x = 1
y = while x -= 1
	console.log(y)
	x += 1

# Array
arr = [1, 2, 3, 4, 5]
console.log(arr[0..1]) # get first 2, [1, 2]

# Aliases (@, ::)
@hero = 'strong'

# Existential operator ?
# talk if quite?
high = 30
low = 10
speed = high ? low # use ? in place of ||
