#release 2

def build_array(var1, var2, var3)
	array = []
	array << var1 << var2 << var3
end

def add_to_array(array, var)
	array<< var
end

#release 1

array = []
p array

array << "1" << "2" << "3" << "4" << "5"
p array

array.delete_at(2)
p array

array.insert(2, "3b")
p array

array.shift
p array

looking_for = "4"

if array.include? looking_for 
	p "Yes, array contains #{looking_for}"
end


array2 = ["6","7","8","9"]

array3 = array + array2
p array3


#release 2

p build_array(1, "two", nil)
p add_to_array(["a","b","c",1,2], 3)
p add_to_array([],"a")
p add_to_array([2],2)

