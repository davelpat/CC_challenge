class HomePage < BrowserContainer
  URL = 'http://www.crowdcompass.com'

  def open
    @browser.goto URL
    self
  end

  def loaded?
    @browser.div(:id => 'home').exists?
  end
end