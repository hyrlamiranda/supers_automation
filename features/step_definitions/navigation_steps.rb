#On step_definitions the 1º command open the loginPage
Given(/^I am on SuperStars LoginPage$/) do
  #@browser.goto "http://staging-superstars.avenuecode.com:3030/"
   @browser.goto "http://superstars.avenuecode.com/"

end
# Verify with valid email and password valid 
When(/^I do the Login with valid data$/) do
	on(LoginPage).logIn
end
# --userlist_element.visible?-- show if this element is True or false
Then(/^I should see the SuperStars HomePage$/) do
	expect(on(HomePage).userlist_element.visible?).to be true
end

# Verify with invalid email and password valid
When(/^I do the Login with invalid username$/) do
    on(LoginPage).InvalidUser
 end

# --emailError_element.visible?-- show if this element is True or false
Then(/^I shouldn't see SuperStars Password Page$/) do
      on(LoginPage).emailError_element.visible?.to be true
    #verify a way to validate text on span elements
end
# Verify with valid email and password invalid
When(/^I do the Login with invalid password$/) do
    on(LoginPage).InvalidPass
end
# --passwordError_element.text == 'Shows the error message'
Then(/^I shouldn't see SuperStars HomePage$/) do
 	expect(on(LoginPage).passwordError_element.text).to eq('The email and password you entered don\'t match.')
end
    







