class LoginPage
include PageObject
include DataMagic

	page_url 'http://staging-superstars.avenuecode.com:3030/'

	button(:btnLogin, :class => 'signin-btn')
	
	text_field(:txtEmail, :id => 'Email')
	button(:btnNext, :class => 'rc-button-submit')


	text_field(:txtPassword, :id => 'Passwd')
	button(:btnSingin, :id => 'signIn')

	span(:emailError, :id => 'errormsg_0_Email')
	span(:passwordError, :id => 'errormsg_0_Passwd')


end