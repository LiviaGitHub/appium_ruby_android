require "appium_lib"

def opts
{
  caps: {
    automationName: 'UiAutomator2',
    deviceName: "androidEmulator",
    platformName: "Android",
    app: (File.join(File.dirname(__FILE__), "app-debug.apk")),
    newCommandTimeout: "3600"
  },
}
end

Appium::Driver.new(opts, true)
Appium.promote_appium_methods Object