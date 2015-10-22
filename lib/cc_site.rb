class BrowserContainer 
  def initialize(browser)
    @browser = browser
  end
end

class CcSite < BrowserContainer
  def home_page
    @home_page = HomePage.new(@browser)
  end

  def feature_page
    @feature_page = FeaturePage.new(@browser)
  end

  def close
    @browser.close
  end
end # CcSite
