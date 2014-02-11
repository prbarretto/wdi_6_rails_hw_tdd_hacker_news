require 'spec_helper'

describe Article do
 	describe "associations" do
 		it { have_many :comments }
 		it { belong_to :user }
 	end
end
