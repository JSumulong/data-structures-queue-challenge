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
		# first_item = contents.peel
		# new_queue = ArrayList.new
		# i = 1
		# while i > contents.length
		# 	new_queue.add(contents)
		# end
	end

	private
	attr_reader :contents


end
