class CcPage
  attr :page

  def initialize(page_handle)
    @page = page_handle
    @page.goto CC_HOME_URL
  end
end