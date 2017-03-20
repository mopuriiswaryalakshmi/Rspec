require "blog"
require "post"

=begin
	describe Blog do 
	  	it "has no posts" do 
	  		expect(Blog.new).to be_empty
	  	end

	  	it "has a post when initialized with one" do
	  		expect(Blog.new(posts: [Post.new])).not_to be_empty
	  	end

	  	it "counts the number of posts" do
	  		expect(Blog.new(posts: [Post.new]).posts_count).to eq 1
	  	end
	end
=end

describe Blog do 
	context "with no posts" do
		before(:context)
		let(:blog) {Blog.new}

	  	it "has no posts" do 
	  		expect(Blog.new).to be_empty
	  	end
	end

	context "with one post" do 
		let(:blog){ Blog.new(posts: [ Post.new])}

	  	it "has a post when initialized with one" do
	  		expect(blog).not_to be_empty
	  	end
	

	  	it "counts the number of posts" do
	  		expect(blog.posts_count).to eq 1
	  	end
  	end
  end