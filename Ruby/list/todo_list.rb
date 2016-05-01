class TodoList

	def initialize(array)
		@array = array
	end

	def get_items
		@array
	end

	def add_item(string)
		@array << string
	end

	def delete_item(string)
		@array.delete(string)
	end

	def get_item(i)
		@array[i]
	end

end

