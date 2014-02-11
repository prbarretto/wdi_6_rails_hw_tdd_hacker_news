require 'spec_helper'

feature 'Manage Users' do

	scenario 'A user should be able to sign up' do
		visit articles_path
		save_and_open_page
		click_link 'Sign up'
 		fill_in 'Email', with: 'bob@example.com'
		fill_in 'Password', with: 'password'
 		fill_in 'Password confirmation', with: 'password'
		click_on 'Sign up'
	end


end
