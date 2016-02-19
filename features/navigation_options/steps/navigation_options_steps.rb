
Given(/^I am on worldremit main page$/) do
	 @home = Homepage.new
	 @home.load
	 @home.cookie_policy.click
end

When(/^I view privacy policy$/) do
	@home.privacy_policy.click
end

Then(/^I see privacy policy page$/) do
	@privacyPolicy = PrivacyPolicy.new
	expect(@privacyPolicy).to be_displayed
end

When(/^I view terms and conditions$/) do
	@home.terms_and_conditons.click
end

Then(/^I see terms and conditions page$/) do
	@termsAndConditions = TermsAndConditions.new
	expect(@termsAndConditions).to be_displayed
end

When(/^I view FAQ$/) do
	@home.faq.click
end

Then(/^I see FAQ page$/) do
	@faq = FAQ.new
	expect(@faq).to be_displayed
end

When(/^I navigate to Login page$/) do
	@home.login.click
	@login = Login.new
	expect(@login).to be_displayed
end

When(/^I navigate to SignUp page$/) do
	@home.signup.click
	@signUp = Signup.new
	expect(@signUp).to be_displayed
end
