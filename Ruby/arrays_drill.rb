#release 2

def build_array(item1, item2, item3)
	array = [item1, item2, item3]
end

p build_array(1,2,3)

def add_to_array(item1, item2)
	item1 << item2
end

p add_to_array([],"a")
p add_to_array(["a", "b", "c", 1, 2], 3)

#release 1

array1 = []
p array1

array1 << 1 << 2 << 3 << 4 <<5
p array1

array1.delete_at(2)
p array1

array1.insert(2, "3b")
p array1

if array1.include?(4)
	p "This contains a 4"
end

array2 = [6,7,8]

array3 = array1 + array2
p array3

#release 2

