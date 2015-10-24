class HomePage < CcSite
  URL = 'http://www.crowdcompass.com'

  def open
    @browser.goto URL
    self
  end

  def loaded?
    self.id_found? 'home'
  end

  def footer_present?
    self.id_found? 'footer'
  end
end