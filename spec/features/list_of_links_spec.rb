require './app/app'

RSpec.feature "Viewing links", :type => :feature do
  scenario "shows a list of links on the homepage" do
    DatabaseCleaner.clean
    Link.create(
    url: 'http://www.google.co.uk',
    title: 'Google search engine'
    )
    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      message = "Google search engine"
      expect(page).to have_content(message)
    end
  end
end
