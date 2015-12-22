# Create a function that takes a string and adds the phrase "Only in America!" to the end of it
def myRubyFunc(string)
	puts string + " Only in America"
end

myRubyFunc("Elvis lives but")

# Create a function to find the maximum value in an array of numbers. For instance: [100,10,-1000] should return 100.

# In my array, x, start with the number in the first position, which is 7. Since there's nothing to compare it to, 7 is the biggestnum.  7 is then compared with the next number, -18, 7 remains biggestnum. 7 is not bigger than 11, so 11 will be the new biggestnum. The code then compares 11 against the final 2 numbers and it remains the biggest. So the biggestnum is 11.
def bignum (arr)
	i = 0
	biggestnum = arr[i]
	while i < arr.length
		if arr[i] > biggestnum
			biggestnum = arr[i]
		end
		i+=1
	end
	return biggestnum
end

x = [7,-18,11,0.5,2.66]

puts bignum(x)

# Create a function that takes two arguments - both of them arrays. Inside of the function, combine the arrays using the items from the first array as keys and the second array as values into a hash. For example, when these two arrays are supplied as arguments:
# ruby [:toyota, :tesla] ["Prius", "Model S"]
# they should return a hash like so:
# ruby {toyota: "Prius", tesla: "Model S"}
# Example1
def arraystohash(arr1, arr2)
	i = 0
	hash = {}
		if arr1.length != arr2.length
			return puts("Your arrays are not equal in length")
		end
	while i < arr1.length
		hash[arr1[i]] = arr2[i]
		i+=1
	end
	return hash
end

arr1 = ["orange", "red", "pink", "black",]
arr2 = [15, 12, 3, 4]

puts(arraystohash(arr1, arr2))

# Example2
type1 = ["green", "yellow", "white", "houston", "purple" ]
type2 = [67, 9, -1, "texas", 0]

def arraystohash (array1, array2)
	hash = Hash.new()
	for i in 0..array1.length
		hash[array1[i]] = array2[i]
	end
	puts hash
end

arraystohash(type1, type2)

# Extra credit-print fizzbuzz function. 

1.upto(100) do |i|
	if i % 3 == 0 && i % 5 == 0
		puts 'fizzbuzz'
	elsif i % 3 == 0
		puts 'fizz'
	elsif i % 5 == 0
		puts 'buzz'
	else 
		puts i
	end
end 
			
# This code is saying, that for all values for 1 up to 100, do the following: print 'fizzbuzz' if the integer i is a multiple of 3 and 5. If i is only a multiple of 3, print 'fizz'. If i is only a multiple of 5, print 'buzz'. If none of these are true, print the current value of i, since i is moving from 1 up to 100.
