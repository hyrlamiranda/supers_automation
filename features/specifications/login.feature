Feature: Login into SuperStars

As a User
I want to login into SuperStars
So that I should complete my profile

@test
Scenario: Do successful login 

	Given I am on SuperStars LoginPage
	When I do the Login with valid data
	Then I should see the SuperStars HomePage

@test1
Scenario: Do fail login with invalid username (invalid@agmail.com)

	Given I am on SuperStars LoginPage
 	When I do the Login with invalid username
	Then I shouldn't see SuperStars Password Page

@test2
Scenario: Do fail login with invalid password (Invalidpassword)

	Given I am on SuperStars LoginPage
 	When I do the Login with invalid password
	Then I shouldn't see SuperStars HomePage



