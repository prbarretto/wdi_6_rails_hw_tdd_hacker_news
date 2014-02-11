require 'spec_helper'

describe User do

	describe "associations" do
		it { have_many :articles }
		it { have_many :comments}
	end

end
