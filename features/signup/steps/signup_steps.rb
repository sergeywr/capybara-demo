
When(/^I submit invalid register data$/) do
	@signUp.submit_invalid_reg_data
end

When(/^I submit valid register data$/) do
	@signUp.submit_valid_reg_data
end

Then(/^I see error messages$/) do
	@signUp.has_errors?
end

Then(/^I am successfully registered customer$/) do
	#TODO: AFTER DEMO
end