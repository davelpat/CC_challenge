require 'watir-webdriver'
require 'minitest'
require 'minitest/assertions'

# Build the path to the project class library file
def lib_file(lib_fn)
  File.join(File.dirname(__FILE__), '..', '..', 'lib', lib_fn)
end
require lib_file('cc_site')
require lib_file('home_page')
#require lib_file('feature_page')


# set_constant_from_env returns the value of the specified environment variable or the default if it is not set
# @param env_var [String] the environment variable to query.
#   NOTE that it expects a Hash rather than JSON if using a hash-y thing.
# @param default [String] the default value to use if the environment variable is not set.
#   NOTE that it expects a Hash rather than JSON if using a hash-y thing.
# @return [String]
def set_constant_from_env(env_var, default)
  value = ENV[env_var]
  if value
    value[0] == '{' ? eval(value) : value
  else
    default
  end
end

# Can override default browser from an environment variable or the cucumber command line
BROWSER ||= set_constant_from_env('BROWSER', :firefox)

module SiteHelper
  def site
    @site ||= (
      CcSite.new(Watir::Browser.new(BROWSER))
    )
  end
end

World(SiteHelper, Minitest::Assertions)
