class HomePage < BrowserContainer
  URL = 'http://www.crowdcompass.com'

  def open
    @browser.goto URL
    self
  end

  def footer_present?
    @browser.div(:id => 'footer').exists?
  end
end