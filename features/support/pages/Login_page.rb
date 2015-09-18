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

	button(:authorize_access,:id => 'submit_approve_access')

	def logIn
		self.btnLogin_element.click
	    self.txtEmail = 'valid@gmail.com'
	    self.btnNext_element.click
	    sleep(2)
	    self.txtPassword = 'validpassword'
	    self.btnSingin_element.click
	end

	def InvalidUser
		self.btnLogin_element.click
    	self.txtEmail = 'invalid@mail.com'
    	self.btnNext_element.click
    	sleep(2)
    	self.txtPassword = 'validpassword'
    	self.btnSingin_element.click
    end

    def InvalidPass
    	self.btnLogin_element.click
    	self.txtEmail = 'valid@gmail.com'
    	self.btnNext_element.click
    	sleep(2)
    	self.txtPassword = 'Invalidpassword'
    	self.btnSingin_element.click
    end
end