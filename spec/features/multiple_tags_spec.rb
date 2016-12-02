require './app/app.rb'

feature 'user can assign multiple tags' do

  scenario 'add multiple tags to a link' do
    sign_up
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
