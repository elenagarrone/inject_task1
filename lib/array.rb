class Array

	def new_inject (default_value = nil)
			copy = self.dup
			result = default_value || first
			copy.shift if default_value == nil #[2,3,4]
			copy.each do |element| # if the default value is given the result == default value and then we take each element of the array
				result = yield(result, element) # if default value is not given, the first time the result == first number of the array = 1
			end
		result
	end

end

# [1, 2, 3, 4].inject(0) { |result, element| result + element } # => 10

# The block will be executed 4 times, once for every element of 
# our array ([1,2,3,4]). The first time the block executes the result 
# argument will have a value of 0 (the value we passed as an argument 
# to inject) and the element argument will have a value of 1 (the first
# element in our array).


# [1, 2, 3, 4].inject { |result, element| result + element } # => 10

# As the example shows, the argument to inject is actually optional. 
# If a default value is not passed in as an argument the first time the 
# block executes the first argument (result from our example) will be set 
# to the first element of the enumerable (1 from our example) and the 
# second argument (element from our example) will be set to the second 
# element of the enumerable (2 from our example). 
