require 'rails_helper'

feature 'Visor creates an author' do
  scenario 'with a valid first and last name' do
    visit new_author_path

    fill_in 'First name', with: 'John'
    fill_in 'Last name', with: 'Doe'

    click_button 'Create Author'

    expect(page).to have_content 'Author was successfully created.'
  end
end
