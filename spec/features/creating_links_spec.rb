require './app/app.rb'

RSpec.feature "Creating Link", :type => :feature do
  scenario "should allow the user to create a new link" do
  DatabaseCleaner.clean

  visit '/links/new'

  expect(page.status_code).to eq 200

  fill_in('title', with: 'Bookface')
  fill_in('url', with: 'www.bookface.com')
  click_button('Submit')

  expect(page).to have_content('Bookface')
  end



end
