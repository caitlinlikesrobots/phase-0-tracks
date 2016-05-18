class TodoList 
	def intitialize(list)
		@list = list
	end

	def get_items
		@list
	end

	def add_items(new_item
		@list.push(new_item)
	end

	def delete_item(all_items)
		all_items_index = @list.index(all_items)
		@list.delete_at(all_items_index)
	end

	def retrieve_item(all_items)
		all_items_index = @list.index(all_items)
		@list.at(all_items_index)
	end
end