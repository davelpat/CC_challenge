class BrowserPage
  def initialize(browser)
    @browser = browser
  end

  def page_id
    @browser.body.id
  end

  def map_to_page_id(target_page)

    # maps link label to page body id tag
    page_id_map = {
        'Features' => 'features',
        'Resources' => 'resources',
        'Clients' => 'clients',
        'CrowdCompass UK' => 'home',
        'About Us' => 'about',
        'Newsroom' => 'news',
        'Demo our Solutions' => 'custom-demo',
    }

    page_id_map[target_page]
  end

  def id_found?(id_name)
    @browser.element(:id => id_name).exists?
  end

  def close
    @browser.close
  end
end

class CcSite < BrowserPage
  def home_page
    @home_page = HomePage.new(@browser)
  end

  def feature_page
    @feature_page = FeaturePage.new(@browser)
  end

  def footer
    @footer = CcFooter.new(@browser)
  end
end # CcSite
