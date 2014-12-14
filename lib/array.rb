class Array

	def new_inject (default_value = nil)
		copy = self.dup
		result = default_value || first
		copy.shift if default_value == nil
		copy.each { |element| result = yield(result, element) }
		result
	end

end
