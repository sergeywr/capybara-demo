
When(/^I navigate to Login page on mobile$/) do
	@home.mob_HamburgerMenu.click
	@home.login.click
end

When(/^I submit valid user data on mobile$/) do
	@login = Login.new
	@login.submit_valid_login
end

Then(/^I am successfully logged in on mobile$/) do
	@home = Homepage.new
	expect(@home).to have_myaccount
end
