Given(/^User is on login screen$/) do
  @screen_title_text
end

And(/^User fills the phone field with "([^"]*)"$/) do |phone_number|
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/phone']").send_keys(phone_number);
end

And(/^Click Continue$/) do
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/button']").click();
end

Then(/^User successfully logs into App$/) do
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/success_title']").text
end

Then(/^An error message is displayed$/) do
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/errorIndicator']").text
end

And(/^User remains on the login screen$/) do
  @screen_title_text
end

When('User sees a description of how to access the application') do
  sleep(3)
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/description']").text
end

And('By default, the country code field is already filled with a value') do
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/countryCode']").text
end