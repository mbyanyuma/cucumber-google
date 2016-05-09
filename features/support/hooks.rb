require 'watir-webdriver'
#in this file, we call the class by name, that's why the require is needed

Before do
  @browser = Watir:: Browser.new
end

After do
# @browser.close
end