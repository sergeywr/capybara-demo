Feature: Login possibility for a customer existing customers
	In order to use worldremit services on mobile
	As a mobile customer
	I want to be able to login

	@mobile
	Scenario: To test that is possible to make possitive login
		Given I am on mobile worldremit main page
		When I navigate to mobile Login page
		And I submit valid user data
		Then I am successfully logged in

	@mobile
	Scenario: To test that is possible to make negative login
		Given I am on mobile worldremit main page
		When I navigate to mobile Login page
		And I submit invalid user data
		Then I see 'Invalid username or password.' error
		And I am not logged in