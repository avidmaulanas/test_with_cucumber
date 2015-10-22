Before('@require_login') do
	user = create(:user)

  visit("/")
  fill_in "Email", 		with: user.email
  fill_in "Password", with: user.password
  click_button "Log in" 
end

After('@require_login') do
	click_on "Sign Out" 
end