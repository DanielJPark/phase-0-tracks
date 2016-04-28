#Release 1
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take the input string... split it into an array
  # run a loop putting each item into the hash as keys
  # set default quantity of each item to 1 as the values
  # print the list to the console using the print_list method defined later in this pseudocode!
# output:  all the key values from the hash

# def create_list(input_string)
# end
  
# example_list = create_list("carrots apples cereal pizza")
# katys_list = create_list("brownies cookies icecream")


# Method to add an item to a list
# input: item name as a string and quantity of the item desired
# steps: define a method that takes 3 parameters
# adds the parameters as a (parameter1)key/(parameter2)value pair to a (parameter3)hash
# output: updated hash(formerly parameter3)



# Method to remove an item from the list
# input: the item to remove which would already be a key in the hash, name of the hash
# steps: define a method that takes 2 parameters
# deletes the given key from the hash
# output: updated hash

# Method to update the quantity of an item
# input: the item to update, new quantity for item, name of hash
# steps: define a method taht takes 3 parameters. item, new quantity, and hash
# output: updated hash

# Method to print a list and make it look pretty
# input: the hash and title for list
# steps: define a method thats takes 2 parameters.. the hash and a title. Print the Title first. Print each Hash Key, then print each Hash Value on their own respective line.
# output: displaying list...

#Release2-4

def print_list(list, title)
  puts title
  list.each do |item, quantity|
    puts "#{item.capitalize} : #{quantity}"
  end
end

def create_list(string, list_name)
  list = {}
  items = string.split(" ")
  items.each do |item|
    list[item] = 1 
  end
  print_list(list, list_name)
end

this_list = create_list("milk eggs cookies cake candy", "Dan's Grocery Shopping List")


def add_item(item, quantity, some_list)
  some_list[item] = quantity
  some_list
end

this_list = add_item("soda", 2, this_list)

def remove_item(item_to_remove, list_name)
  list_name.delete(item_to_remove)
  list_name
end

this_list = remove_item("soda", this_list)

def update_quantity(item, quantity, list)
  list[item] = quantity
  list
end

this_list = update_quantity("milk", 3, this_list)


this_list = print_list(this_list, "Andrea's Grocery Shopping List")


#Release 5 - Relection


# What did you learn about pseudocode from working on this challenge?

#   Pseudocode is something I definitely struggle with but from this challenge I learned how it actually is very useful and helpful when writing out the actualy code! With my pair I found that pseudocoding actually took up the majoring of our time. Once the pseudocode was effectively written, writing the actual code was very easy!.

# What are the tradeoffs of using arrays and hashes for this challenge?

#   With Hashes the ability to set keys with values was very helpful for this specific challenge. It made updating quantities and removing items very simple. Arrays having only objects that refer to an index id would have limited what were trying to do.

# What does a method return?

#   A method returns processed data based off of data that you input.

# What kind of things can you pass into methods as arguments?

#   Anything. Strings, Integers, Floats, Arrays, Hashes, even other methods.

# How can you pass information between methods?

#   Yes. Using * and & makes it possible.

# What concepts were solidified in this challenge, and what concepts are still confusing?

#   The order in which you define methods effects how they run. This challenge helped me a lot with my coding logic. It also helped solify my understanding of working with hashes. I also learned how to pseudocode more effectively.

  