And(/^The search will display the country related to the code$/) do
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/itemHolder']").text();
end

When(/^User search for the country code "([^"]*)"$/) do |country|
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/countryCode']").click();
  sleep(2)
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/filterEditText']").send_keys(country);
end

And(/^User select the country code$/) do
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/itemHolder']").click();
end
