# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# create items array using split method
# create new hash
# iterate over items to create list hash including default quantity
# print the list to the console [can you use one of your other methods here?] (method call)
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: item name, list name, and optional quantity
# steps: 
# check to see IF item already exists
# add item to list hash
# add quantity IF given
# print a message indicating success
# output:
# updated hash

# Method to remove an item from the list
# input: item name
# steps: 
# run delete. 
# IF nil, provide error message
# output: updated hash or nil

# Method to update the quantity of an item
# input: name of key , quantity
# steps: 
# see IF key is in hash
# IF so, update key with new value
# ELSE, give an error "This item isn't in your list"
# message indicating success
# output: updated hash 

# Method to print a list and make it look pretty
# input: name of hash
# steps: iterate over hash using puts and each method.
# output: pretty-printed hash / hash

def list_creator(items)
  item_array = items.split
  list = {}
  item_array.map { |x| list[x] = 3}
  list_printer(list)
  return list
end

  
def list_adder(list, item, quantity=3)
  #this method takes a hash, and returns a hash with another item in it
  if list.include?(item)
    puts "Sorry, that item already exists in the list."
  else
    list[item] = quantity
    puts "congrats, you added #{quantity} #{item}s to your list"
    return list    
  end
end
 


#p list_adder(list, "pear")

def remove_item(list, item)
  if list.delete(item)
    puts "You've deleted #{item}"
  else
    puts "Sorry, there aren't any #{item} in your list"
  end
  return list
end

# p remove_item(list, 'pear')
# p remove_item(list, 'pear')

def quantity_update(list, item, quantity)
  if list.include?(item)
    list[item] = quantity
    puts "There are now #{quantity} #{item}s in your list"
  else
    puts "Sorry, there aren't any #{item}s on your list"
  end
  return list
end

# p quantity_update(list, 'pear', 4)

def list_printer(list) 
  list.each do |item, quantity|
    puts "There are #{quantity} #{item}s in your list."  
  end
  return list
end
items = "lemonade tomatoes onions icecream"
shopping_list = list_creator(items)
quantity_update(shopping_list, "lemonade", 2)
quantity_update(shopping_list, "tomatoes", 3)
quantity_update(shopping_list, "onions", 1)
quantity_update(shopping_list, "icecream", 4)
remove_item(shopping_list, "lemonade")
quantity_update(shopping_list, "icecream", 1)
p list_printer(shopping_list)


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
  Return the information using the return statement. 

What concepts were solidified in this challenge, and what concepts are still confusing?
  A lot of the syntax was cleared up for me here, but I am still getting my head around the inferences
  that Ruby seems to make inherently as a language. 
=end
