CAPTURE_PAGE_NAME = Transform /^['"]?[\w\s]+['"]?$/ do |page_name|
  page_name.gsub(/['"]/, '')
end
