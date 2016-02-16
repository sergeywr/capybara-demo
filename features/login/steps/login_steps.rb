When(/^I submit valid user data$/) do
	@login.submit_valid_login
end

Then(/^I am successfully logged in$/) do
	@home.load
	expect(@home).to have_myaccount
end

When(/^I submit invalid user data$/) do
	@login.submit_invalid_login
end

Then(/^I see '(.*)' error$/) do |error|
	expect(@login.error_login.text).to eq error
end

Then(/^I am not logged in$/) do
	@home.load
	expect(@home).not_to have_myaccount
end