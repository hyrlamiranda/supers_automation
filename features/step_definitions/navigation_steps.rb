#On step_definitions the 1º command open the loginPage
Given(/^I am on SuperStars LoginPage$/) do
  #@browser.goto "http://staging-superstars.avenuecode.com:3030/"
   @browser.goto "http://superstars.avenuecode.com/"

end
# Verify with valid email and password valid 
When(/^I do the Login with valid data$/) do
    on(LoginPage).btnLogin_element.click
    on(LoginPage).txtEmail = 'valid@mail.com '
    on(LoginPage).btnNext_element.click
    sleep(2)
    on(LoginPage).txtPassword = ''
    on(LoginPage).btnSingin_element.click

end
# --userlist_element.visible?-- show if this element is True or false
Then(/^I should see the SuperStars HomePage$/) do
  on(HomePage).userlist_element.visible?
end

# Verify with invalid email and password valid
When(/^I do the Login with invalid username$/) do
    on(LoginPage).btnLogin_element.click
    on(LoginPage).txtEmail = 'invalid@mail.com'
    on(LoginPage).btnNext_element.click
    sleep(2)
    on(LoginPage).txtPassword = ''
    on(LoginPage).btnSingin_element.click
 end
# --emailError_element.visible?-- show if this element is True or false
Then(/^I shouldn't see SuperStars Password Page$/) do
      on(LoginPage).emailError_element.visible?
    #verify a way to validate text on span elements
end
# Verify with valid email and password invalid
When(/^I do the Login with invalid password$/) do
    on(LoginPage).btnLogin_element.click
    on(LoginPage).txtEmail = 'valid@mail.com'
    on(LoginPage).btnNext_element.click
    sleep(2)
    on(LoginPage).txtPassword = 'Invalidpassword'
    on(LoginPage).btnSingin_element.click
end
# --passwordError_element.text == 'Shows the error message'
Then(/^I shouldn't see SuperStars HomePage$/) do
  on(LoginPage).passwordError_element.text == ' The email and password you entered don\'t match. '
end
    







