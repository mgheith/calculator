require 'watir-webdriver'

browser = Watir::Browser.new

browser.goto "www.google.com"
browser.text_field(:id => "lst-ib").set "columbus state"

sleep 5

browser.close