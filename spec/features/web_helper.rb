  def sign_up
    visit '/signup'
    expect(page.status_code).to eq 200
    fill_in "email", with: "bob@bob.com"
    fill_in "password", with: "Password"
    click_button('Sign up')

  end
