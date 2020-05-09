require 'rails_helper'

RSpec.feature 'New user', type: :feature do
    scenario 'user can navigate to add new user page' do
        visit '/'
        click_on 'Create User'
        expect(page).to have_text("Add a new user")
    end

    scenario 'user can add a new user' do
        visit 'users/new'
        fill_in "user[username]", with: "Alex"
        click_on "Add User"
        expect(page).to have_content "Hello Alex"
    end
end