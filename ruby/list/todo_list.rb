class TodoList
  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def get_items
    return @list
  end

  def add_item(item)
    return @list << item
  end

  def delete_item(item)
    return @list.delete(item)
  end

  def get_item(index)
    return @list[index]
  end
end

# list = TodoList.new(["do the dishes", "mow the lawn"])
# list.get_items
# list.add_item("mop")
# list.delete_item ("do the dishes")
# list.get_item[0]


