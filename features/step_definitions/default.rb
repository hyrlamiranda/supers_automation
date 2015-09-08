#No step_definitions o 1º comando dado para abrir a pagina
Given(/^I am on SuperStars LoginPage$/) do
  @browser.goto "http://staging-superstars.avenuecode.com:3030/"
end
#Verifica o login valido
When(/^I do the Login with valid data$/) do
    on(LoginPage).btnLogin_element.click
    on(LoginPage).txtEmail = 'hmattos@avenuecode.com'
    on(LoginPage).btnNext_element.click
    on(LoginPage).txtPassword = '123hyrla'
    on(LoginPage).btnSingin_element.click

end

Then(/^I can see the SuperStars HomePage$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I do the Login with invalid data$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can not see SuperStars HomePage$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am on SuperStars ProfilePage$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in the page with valid data$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can see the information saved$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
