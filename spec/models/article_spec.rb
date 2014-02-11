require 'spec_helper'

describe Article do
 	describe "associations" do
 		it { have_many :comments }
 		it { belong_to :user }
 	end

 	it "is a valid post" do
 		expect(Article.create(description: "Amazing new article", link: "http://www.amaze.com")).to be_valid
 	end

 	it "is not a valid article because link is missing" do
 		expect(Article.create(description: "So cool!")).to_not be_valid
 	end

 	it "is not a valid article because description is missing" do
 		expect(Article.create(link: "http://www.cats.com")).to_not be_valid
 	end
end
