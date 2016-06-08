# Phase 0 of GPS 2.2

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define the method create_list
  # initialize item array
  # use split method
  # initialize a hash with each of the items -> grocery_list
  # set default quantity -> create_list = 0
    # use map to set the quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: check to see if the item is there, if there is a qty given
# print the update message
# output: the update hash

# Method to remove an item from the list
# input: item name
# steps: use delete method, if not there we will get nil
# output: the update hash or nil

# Method to update the quantity of an item
# input: key -> name of item, qty
# steps: check to see if key is in the hash, IF so update key w/ new value ELSE item isn't in list
# output: the update hash

# Method to print a list and make it look pretty
# input: name of the hash
# steps: iterate over hash using each method
# output: beautifully printed hash

def create_list(items)
  item_array = items.split(' ')
  grocery_list = {}
  item_array.map {|x| grocery_list[x] = 0}
  return grocery_list
end

grocery_list = create_list("carrots apples wine")

def add_item(grocery_list, item, quantity=4)
  if grocery_list.include?(item)
    puts "This is already on your list!"
  else grocery_list[item] = quantity
  end
  puts "Your list has been updated!"
  return grocery_list
end

p add_item(grocery_list, "pear")

def remove_item(grocery_list, item)
  if grocery_list.delete(item)
    puts "You've removed this item."
  else
    puts "This item was not on your list."
  end
  return grocery_list
end

p remove_item(grocery_list, "carrots")

def update_quantity(grocery_list, item, quantity)
  if grocery_list.include?(item)
    grocery_list[item] = quantity
    puts "There are now #{quantity} #{item}."
  else puts "That item is not on your list."
  end
  return grocery_list
end

p update_quantity(grocery_list, "wine", 2)

def pretty_print(grocery_list)
  grocery_list.each do |item, quantity|
    puts "There are #{quantity} #{item} on your list."
  end
  return grocery_list
end

p pretty_print(grocery_list)

items = "lemonade tomatoes onions ice_cream"
shopping_list = create_list(items)
update_quantity(shopping_list, "lemonade", 2)
update_quantity(shopping_list, "tomatoes", 3)
update_quantity(shopping_list, "onions", 1)
update_quantity(shopping_list, "ice_cream", 4)
remove_item(shopping_list, "lemonade")
update_quantity(shopping_list, "ice_cream", 1)
print pretty_print(shopping_list)

=begin What did you learn about pseudocode from working on this challenge?
  I learned that large blocks of code are placed at the top in order to keep readablity. Also, 
  I realized that the more generalized in specificity your pseudocode is, the less likely
  it will be outdated as immediately. 
What are the tradeoffs of using arrays and hashes for this challenge?
  Using the array to create the list made it easier to iterate through that list and update the 
  hash with given quantities. 
What does a method return?
  Methods returns the modifications made to the parameters by the arguments presented in the method. 
What kind of things can you pass into methods as arguments?
  You can pass calculations, other methods, print statements, get input, comparisons... etc. 
How can you pass information between methods?
  use instance variables rather than local variables to pass that information throughout the object methods. 
What concepts were solidified in this challenge, and what concepts are still confusing?
  A lot of the syntax was cleared up for me here, but I am still getting my head around the inferences
  =end
