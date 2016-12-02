require './app/app.rb'

feature 'Signing up to the bookmark manager' do

  scenario 'User add their sign up information' do

    # Visits a URL, sees a signup form, enters an email and password and submits the form.
    # Checks that, when the form is submitted, the browser is directed to the /links page.
    # Checks that the /links page shows a welcome message.
    # Checks that the user's email address is displayed as part of the welcome message.
    # Checks that the User count increases by 1.

    expect{ sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Welcome, bob@bob.com")
    expect(User.first.email).to eq("bob@bob.com")
  end

end
