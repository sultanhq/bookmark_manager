require './app/app.rb'

feature "Adding a tag to a link" do
  scenario "User fills in a tag field" do
    visit '/links/new'
    fill_in "title", with: "Youtube"
    fill_in "url", with: "youtube.com"
    fill_in "tag", with: "videos"
    click_button('Submit')
    save_and_open_page
    within 'ul#tags' do
      expect(page).to have_content("videos")
    end
  end
end
