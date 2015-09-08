Feature: Login into SuperStars

As an User
I want to login into SuperStars
So that I can complete my profile

Scenario: Do successful login 

	Given I am on SuperStars LoginPage
	When I do the Login with valid data
	Then I can see the SuperStars HomePage


Scenario: Do fail login 

	Given I am on SuperStars LoginPage
	When I do the Login with invalid data
	Then I can not see SuperStars HomePage


