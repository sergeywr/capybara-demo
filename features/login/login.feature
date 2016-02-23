Feature: Login possibility for a customer existing customers
	In order to use worldremit services
	As a customer
	I want to be able to login

	@desktop
	Scenario: To test that is possible to make possitive login
		Given I am on worldremit main page
		When I navigate to Login page
		And I submit valid user data
		Then I am successfully logged in

	@desktop
	Scenario: To test that is possible to make negative login
		Given I am on worldremit main page
		When I navigate to Login page
		And I submit invalid user data
		Then I see 'Invalid username or password.' error
		And I am not logged in

	@mobile
	Scenario: To test that is possible to make possitive login on mobile
		Given I am on worldremit main page
		When I navigate to Login page on mobile
		And I submit valid user data on mobile
		Then I am successfully logged in on mobile

	@mobile
	Scenario: To test that is possible to make negative login on mobile
		Given I am on worldremit main page
		When I navigate to Login page on mobile
		And I submit invalid user data on mobile
		Then I am not logged in on mobile