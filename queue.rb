require_relative 'array_list'

class MyQueue

	def initialize
		@contents = ArrayList.new
	end

	def enqueue(new_element)
		contents.add(new_element)
	end

	def peel
		contents.get(0)
	end

	def dequeue
		first_item = contents.get(0)
		new_queue = ArrayList.new
		i = 1
		while i < contents.length
			new_queue.add(contents.get(i))
			i += 1
		end
		@contents = new_queue
		first_item
	end

	def empty?
		contents.length == 0
	end

	private
	attr_reader :contents

end
