require 'watir-webdriver'
require 'page-object'

class GoogleHome
  include PageObject
  text_field("search_field", :id => "lst-ib")  
end

Given /^I have a browser on google.com$/ do
 @browser = Watir::Browser.new
 @browser.goto "www.google.com"
end

When /^I enter text into the search fields$/ do
  @browser.text_field(:id => "lst-ib").set "columbus state"
  GoogleHome.new(@browser).search_field = "columbus state"
  @google = GoogleHome.new(@browser)
 end
 
 Then /^I can see the text$/ do
  sleep 2
  #expect(@browser.text_field(:id => "lst-ib")).to be_visible
  expect(@google.search_field_element).to be_visible
end