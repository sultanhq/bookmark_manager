require './app/app.rb'

feature 'user can assign multiple tags' do

  before (:each) do
    Link.create(title:  "BBC", url:  "www.bbc.co.uk", tags: [Tag.first_or_create(name: 'News'),Tag.first_or_create(name: ','),  Tag.first_or_create(name: 'Sport')])
  end

  scenario 'add multiple tags to a link' do
    visit '/links'
    # save_and_open_page
    expect(page).to have_content("News").to have_content("Sport")

  end

end
