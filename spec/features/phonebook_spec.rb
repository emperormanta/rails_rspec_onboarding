require 'rails_helper'

# require_relative '../init'
# Rspec.feature "the signin process", :type => :feature do
RSpec.describe "the signin process", type: :feature do
    before(:each) do
      @user = create(:user)
    end

    it "signs me in" do
    # scenario "signs me in" do
      visit '/users/sign_in'
      within("#new_user") do
        fill_in 'Email', with: @user.email
        fill_in 'Password', with: @user.password
      end
      click_button 'Log in'
      expect(page).to have_content 'Phonebook'
    end
end

# RSpec.describe 'Search Page', type: :feature do
#   # it 'has the word Phonebook' do
#   #   visit 'https://www.duckduckgo.com'
#   #   expect(page).to have_text('Phonebook')
#   # end

#   it 'shows autocomplete window after we type in the search box' do
#     visit 'https://www.duckduckgo.com'
#     fill_in 'search_form_input_homepage', with: 'a'
#     assert_selector('#search_form_homepage > div.search__autocomplete')
#     expect(page).to have_content 'Phonebook'
#   end
# end