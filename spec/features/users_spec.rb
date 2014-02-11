require 'spec_helper'

feature 'Manage Users' do

	scenario "Create a New User" do
		visit new_user_registration_path
		fill_in "Email", with: "bob@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_button "Sign up"
		expect(page).to have_content("All Articles")
	end

	scenario "Signed In a User" do
		visit new_user_session_path
		fill_in "Email", with: "bob@example.com"
		fill_in "Password", with: "password"
		click_button "Sign in"
	end

end
