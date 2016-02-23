
When(/^I navigate to Login page on mobile$/) do
	@home.mob_HamburgerMenu.click
	@home.login.click
	@login = Login.new
end

When(/^I submit valid user data on mobile$/) do
	@login.submit_valid_login
end

When(/^I submit invalid user data on mobile$/) do
	@login.submit_invalid_login
end

Then(/^I am successfully logged in on mobile$/) do
	@home.load
	expect(@home).to have_myaccount
end

Then(/^I am not logged in on mobile$/) do
	@home.load
	expect(@home).not_to have_myaccount
end
