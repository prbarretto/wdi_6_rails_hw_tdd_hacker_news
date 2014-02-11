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

	scenario 'A user should be able to create an article' do
		user = User.create(email: 'jim@example.com', password: 'Password')
		visit new_user_session_path
		fill_in 'Email', with: user.email
 		fill_in 'Password', with: user.password
 		click_button 'Sign in'
 		visit new_user_article_path(user.id)
		fill_in 'Description', with: 'First article'
 		fill_in 'Link', with: 'http://www.articlemania.com'
		click_button 'Create Article'
 		expect(page).to have_content('First article')
 	end

end
