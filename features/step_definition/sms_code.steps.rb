And(/^User remains on SMS request screen$/) do
  @screen_title_text
end

And('User fills in SMS code fields {string} {string} {string} {string}') do |code_1, code_2, code_3, code_4|
  sleep(3)
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/codeList']/android.widget.EditText[1]").send_keys(code_1);
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/codeList']/android.widget.EditText[2]").send_keys(code_2);
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/codeList']/android.widget.EditText[3]").send_keys(code_3);
  driver.find_element(xpath: "//*[@resource-id='app.choco.dummyqa:id/codeList']/android.widget.EditText[4]").send_keys(code_4);
end