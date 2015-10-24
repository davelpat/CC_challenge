class CcFooter < CcSite
  def footer_bar
    @browser.div(:id => 'footer')
    self
  end

  def go_to_named_link(link_text)
    @browser.goto @browser.div(:id => 'footer').link(:text => link_text).href
    self
  end
end