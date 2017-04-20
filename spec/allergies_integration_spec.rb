
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('allergies',{:type => :feature}) do
  it('processes user entry and returns allergies list') do
    visit('/')
    fill_in('allergy-number', :with => '41')
    click_button('Enter!')
    expect(page).to have_content('["chocolate", "strawberries", "eggs"]')
  end
end
