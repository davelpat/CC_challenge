Given(/^the common footer is present on the home page$/) do
  @current_page = @home_page = site.home_page.open
  assert @home_page.loaded?, 'Home page not loaded'
  assert @home_page.footer_present?, 'Footer block missing from Home page'
end

When(/^I click on the (#{CAPTURE_PAGE_NAME}) link in the footer$/) do |link_name|
  @footer = site.footer.footer_bar
  @current_page = @footer.go_to_named_link link_name
end

Then(/^the (#{CAPTURE_PAGE_NAME}) page is displayed$/) do |target_page|
  assert_equal site.map_to_page_id(target_page), @current_page.page_id, "#{target_page} page not displayed"
end
