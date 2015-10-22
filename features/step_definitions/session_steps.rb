Given /^I logged into system with email "(.*?)" and password "(.*?)"$/ do |email, password|
  create(:user)

  visit("/")
  fill_in "Email", 		with: email
  fill_in "Password", with: password
  click_button "Log in"
end
