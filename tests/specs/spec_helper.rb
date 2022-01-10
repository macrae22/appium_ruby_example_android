require 'appium_lib'

def android_caps
  {
    caps: {
      platformName: 'Android',
      platformVersion: ENV['ANDROID_PLATFORM_VERSION'] || '6.0',
      deviceName: 'emulator-5554',
      app: '../apps/apks/cookpad.apk',
      automationName: 'UIAutomator2',
      appPackage: 'com.mufumbo.android.recipe.search',
      appActivity:'com.cookpad.android.app.gateway.GatewayActivity'
    },
    appium_lib: {
      wait: 10
    }
  }
end

def ios_caps
  {
    caps: {
        platformName: 'iOS',
        platformVersion: ENV["IOS_PLATFORM_VERSION"] || '14.2',
        deviceName: ENV["IOS_DEVICE_NAME"] || 'iPhone 12',
        app: '../apps/TestApp.app.zip',
        automationName: 'XCUITest',
    },
    appium_lib: {
        wait: 10
    }
  }
end

$driver = Appium::Driver.new(android_caps, true)
$touch = Appium::TouchAction.new(@driver)
Appium.promote_appium_methods Object