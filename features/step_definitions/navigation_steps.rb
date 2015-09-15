#On step_definitions the 1º command open the loginPage
Given(/^I am on SuperStars LoginPage$/) do
  @browser.goto "http://staging-superstars.avenuecode.com:3030/"
end
# Verify with valid 
When(/^I do the Login with valid data$/) do
    on(LoginPage).btnLogin_element.click
    on(LoginPage).txtEmail = 'valid@gmail.com'
    on(LoginPage).btnNext_element.click
    sleep(2)
    on(LoginPage).txtPassword = 'valid'
    on(LoginPage).btnSingin_element.click

end

When(/^I do the Login with invalid username$/) do
    on(LoginPage).btnLogin_element.click
    on(LoginPage).txtEmail = 'invalid@gmail.com'
    on(LoginPage).btnNext_element.click
    sleep(2)

    on(LoginPage).emailError
    #verify a way to validate text on span elements

end


When(/^I do the Login with invalid password$/) do
    on(LoginPage).btnLogin_element.click
    on(LoginPage).txtEmail = 'hmattos@avenuecode.com'
    on(LoginPage).btnNext_element.click
    sleep(2)
    on(LoginPage).txtPassword = 'Invalidpassword'
    on(LoginPage).btnSingin_element.click
    on(LoginPage).passwordError


end 




