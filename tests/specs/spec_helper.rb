# require 'test/unit'
# extend Test::Unit::Assertions

ANDROID_PACKAGE = 'com.mufumbo.android.recipe.search.debug'
def android_caps
  {
    caps: {
      platformName: 'Android',
      platformVersion: ENV['ANDROID_PLATFORM_VERSION'] || '6.0',
      deviceName: 'emulator-5554',
      app: '../users/martynmacrae/downloads/cookpad.apk',
      automationName: 'UIAutomator2',
    },
    appium_lib: {
      wait: 60
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
        wait: 60
    }
  }
end