require './app/app.rb'

feature "Adding a tag to a link" do

  scenario "User fills in a tag field" do
    sign_up
    visit '/links/new'
    fill_in "title", with: "Youtube"
    fill_in "url", with: "youtube.com"
    fill_in "tag", with: "videos"
    click_button('Submit')

    link = Link.first
    expect(link.tags.map(&:name)).to include('videos')

  end

end
