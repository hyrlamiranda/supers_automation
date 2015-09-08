require 'watir-webdriver'
require 'rubygems'


Before do
  @browser = Watir::Browser.new :firefox


end


After do
  @browser.close
end