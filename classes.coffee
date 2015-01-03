# I love sugar
class Animal
	# constructor: (name) ->
	# 	@name = name
	# alternative,
	constructor: (@name) ->

	# Static properties
	@type: "Animal"

	# Instance properties
	num_leg: 4

	alive: ->
		false

animal = new Animal('Dog')
console.log animal.name
console.log Animal.type

# Inheritance
class Dog extends Animal
	constructor: ->
		super 'Dog'

	dead: ->
		not @alive()

# Ruby-like open class, monkey patching

Animal::greet = (msg) ->
	console.log msg

dog = new Dog
dog.greet 'wooof!!'

# Self implementable Mixins
extend = (obj, mixin) ->
	obj[name] = method for name, method of mixin
	obj

include = (klass, mixin) =>
	extend klass.prototype, mixin

include Dog, diet: 'omnivore'

console.log dog.diet

# Last but not least,
# Self implementable Module

module_keywords = ['extended', 'included']
class Module
	@extend: (obj) ->
		for key, val of obj when key not in module_keywords
			@[key] = val
		obj.extended?.apply(@)
		this

	@include: (obj) ->
		for key, val of obj when key not in module_keywords
			@::[key] = val
		obj.included?.apply(@)
		this

classProperties =
	foo: () ->
		console.log 'A class properties'

instanceProperties =
	bar: ->
		console.log 'An instance properties'

class Cow extends Module
	@extend classProperties
	@include instanceProperties

Cow.foo()
cow = new Cow
cow.bar()