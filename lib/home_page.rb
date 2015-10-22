class HomePage < BrowserContainer
  URL = 'http://www.crowdcompass.com'

  def open
    @browser.goto URL
    self
  end
end