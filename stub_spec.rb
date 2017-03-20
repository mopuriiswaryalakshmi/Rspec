describe "Stubs" do 
	it "provides stubs to simulate state" do 
		calculator = PriceCalculator.new
		calculator.add double(price: 1.0)
		calculator.add double(price: 100.25)

		expect(calculator.final_price).to eq 101.25
    end
end