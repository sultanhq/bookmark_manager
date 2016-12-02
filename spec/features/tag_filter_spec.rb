require './app/app'

feature 'filtering links by tags' do

  before(:each) do
    Link.create(title: 'Makers Academy', url: 'http://www.makersacademy.com',  tags: [Tag.first_or_create(name: 'education')])
    Link.create(title: 'Google', url: 'http://www.google.com',  tags: [Tag.first_or_create(name: 'search')])
    Link.create(title: 'This is Zombocom', url: 'http://www.zombo.com',  tags: [Tag.first_or_create(name: 'bubbles')])
    Link.create(title: 'Bubble Bobble', url: 'http://www.bubble-bobble.com',  tags: [Tag.first_or_create(name: 'bubbles')])
  end

  scenario 'I can filter links by tag' do
    sign_up
   visit '/tags/bubbles'

   expect(page.status_code).to eq(200)
   within 'ul#links' do
     expect(page).not_to have_content('Makers Academy')
     expect(page).not_to have_content('Code.org')
     expect(page).to have_content('This is Zombocom')
     expect(page).to have_content('Bubble Bobble')
   end
 end

end
