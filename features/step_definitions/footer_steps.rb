Given(/^the common footer is present on the home page$/) do
  @home_page = site.home_page.open
  assert @home_page.loaded?, 'Home page failed to load'
  assert @home_page.footer_present? 'Footer block missing from Home page'
end

When(/^I click on the 'Features' link$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the 'Features' page is displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
