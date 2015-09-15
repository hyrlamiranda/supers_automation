class HomePage
include PageObject


page_url 'http://staging-superstars.avenuecode.com:3030/#!/'


	button(:btnNotNow, :class => 'md-warn md-hue-1 md-button md-default-theme')
	div(:userlist, :class => 'home-page-content')

end