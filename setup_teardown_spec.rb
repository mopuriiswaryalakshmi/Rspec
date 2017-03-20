require "blog"

describe "Callbacks" do 
	let(:blog) {Blog.new}
=begin
 before(:context) do 
    	blog.populate!
    end
    before(:each) do 
    	blog.populate!
    end 
=end
    before(:example) do ||example 
    	blog.populate!
    	puts example.inspect
    end 
=begin
	it "is empty" do 
		expect(blog).to be_empty
	end
=end

	it "has one post" do
		expect(blog.posts_count).to eq 1
	end

	it "has one post" do
		expect(blog.posts_count).to eq 1
	end
end