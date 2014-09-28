require 'array'

describe Array do

	context "The new inject: " do
		
		it "should add up all the number in the array" do
			expect([1,2,3,4].new_inject {|result, element| result + element}).to eq(10)
		end

		it "should multiply all the number in the array" do
			expect([1,2,3,4].new_inject {|result, element| result * element}).to eq(24)
		end

		it "should subtract all the number in the array" do
			expect([1,2,3,4].new_inject {|result, element| result - element}).to eq(-8)
		end

		it "should divide all the number in the array" do
			expect([1,2,3,4].new_inject {|result, element| result / element}).to eq(0)
		end

	end
	
end