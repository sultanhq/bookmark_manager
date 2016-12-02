require './app/app.rb'

feature 'user can assign multiple tags' do

  # before (:each) do
  #   Link.create(title:  "BBC", url:  "www.bbc.co.uk", tags: [Tag.first_or_create(name: 'News'),  Tag.first_or_create(name: 'Sport')])
  # end

  scenario 'add multiple tags to a link' do
    visit '/links/new'
    fill_in "title", with: "Sky"
    fill_in "url", with: "www.sky.com"
    fill_in "tag", with: "News,Sport"

    click_button('Submit')

    # require'pry';binding.pry
    visit '/tags/News'
    expect(page).to have_content("www.sky.com")

    visit '/tags/Sport'
    # save_and_open_page
    expect(page).to have_content("www.sky.com")

  end

end
