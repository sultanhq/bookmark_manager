require './app/app.rb'

feature 'Signing up to the bookmark manager' do

  scenario 'User add their sign up information' do

    # Visits a URL, sees a signup form, enters an email and password and submits the form.
    # Checks that, when the form is submitted, the browser is directed to the /links page.
    # Checks that the /links page shows a welcome message.
    # Checks that the user's email address is displayed as part of the welcome message.
    # Checks that the User count increases by 1.

visit '/signup'
    expect(page.status_code).to eq 200
    email = "bob@bob.com"
    fill_in "email", with: email
    fill_in "password", with: "Password"
    click_button('Sign up')
    expect(current_path).to eq('/links')
    expect(page).to have_content("Welcome #{email}")
    expect{User.save}.to change{User.all.count}.by(1)
  end

end
