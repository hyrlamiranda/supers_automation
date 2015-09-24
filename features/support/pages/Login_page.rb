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

#def initialize_page
#		 wait_until(20, "ERROR: Google Account Login page not loaded"){ txtEmail_element.visible? ||  txtPassword_element.visible?}
#end

	def login
		login = YAML::load_file('config/data/login.yml')
	  	self.btnLogin_element.click
	    self.txtEmail = login['valid_account']['login']
	    self.btnNext_element.click
	    sleep(2)
	    self.txtPassword = login['valid_account']['password']
	    self.btnSingin_element.click
	end

	def InvalidUser
		login = YAML::load_file('config/data/login.yml')
		self.btnLogin_element.click
    	self.txtEmail = login['invalid_user']['login']
    	self.btnNext_element.click
    	sleep(2)
    	self.txtPassword = login['invalid_user']['password']
    	self.btnSingin_element.click
    end

    def InvalidPass
    	login = YAML::load_file('config/data/login.yml')
    	self.btnLogin_element.click
    	self.txtEmail = login['valid_account']['login']
    	self.btnNext_element.click
    	sleep(2)
    	self.txtPassword = login['invalid_user']['password']
    	self.btnSingin_element.click
    end
end