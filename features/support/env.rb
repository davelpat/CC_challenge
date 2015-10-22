require 'watir-webdriver'
browser = Watir::Browser.new
at_exit do
#  browser.close
end

CC_HOME_URL = 'http://www.crowdcompass.com'

require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'cc_page')
$cc_web_page = CcPage.new(browser)
