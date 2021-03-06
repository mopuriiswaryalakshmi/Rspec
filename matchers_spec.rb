describe "Matchers"do 
	it "asserts on equality" do 
		number = 3
		expect(number).to eq 3
end

	it "asserts on mathematical operators" do 
		number = 5
		expect(number)to be >= 2
	end
	it "asserts on matching a regular expression" do 
		email = "jose@tutsplus.com"
		regular_expression = /^\w+@\w+\.[a-z]{2,4}$/
        expect(email).to match regular_expression
	end
	it "asserts on types and classes" do
		object = Numaric.new
	    expect(object).to be_an_instance_of Numeric
    end
	it "asserts on truthiness" do 
		bool = true 
		falsy_bool = false 
		nil_value = nil 
		object = Class.new 

		expect(object).to be_truthy
	end

	it "experts errors" do 
		expect do 
		   raise ArgumentError
		   end.to raise_error TypeError
	end

	it "experts throws" do 
		expect {
			throw :hooray
			}.to throw_symbol
	end

	it "asserts on predicates" do 
		class A
			def good?
				A
			end
		end
		expect(A.new).to be_good
	end

	it "asserts on collections" do 
		list = [
			:one,
			:two,
			:three,
			:four
		]
		expect(list).to include :four
		expect(list).to start_with [ :one, :two ]
		expect(list).to end_with [:three, :four ]
	end 


	it "negates asserts" do 
		expect(3).not_to be 3
	end
end