class Node
	next: undefined
	value: undefined
	constructor: (value) ->
		@value = value

class LinkedList
	head: undefined

	constructor: () ->

	insert: (value) ->
		new_node = new Node(value)
		if @head is undefined
			@head = new_node
		else
			temp = @head
			while @head.next isnt undefined
				@head = @head.next
			@head.next = new_node
			@head = temp

	remove: () ->
		temp = @head
		@head = @head.next while @head.next.next isnt undefined
		@head.next = undefined
		@head = temp
	
	display: () ->
		temp = @head
		while temp isnt undefined
			console.log "#{temp.value}"
			temp = temp.next

linked_list = new LinkedList
linked_list.insert n for n in [1, 2, 3, 4, 5]
linked_list.display()
linked_list.remove()
linked_list.display()