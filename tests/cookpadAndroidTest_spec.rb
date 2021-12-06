require './specs/spec_helper'
require './common/common'
require './screens/login/login.rb'
require './screens/login/login_email.rb'
require './screens/login/main_nav_bar.rb'
require 'appium_lib'

describe 'Login' do

  before(:all) do
    caps = android_caps
    caps[:caps][:appActivity] = 'com.cookpad.android.app.gateway.GatewayActivity'
    @driver = Appium::Driver.new(caps, false).start_driver
  end

  after(:all) do
    @driver&.quit
  end

  it 'via email' do
    login = Login.new @driver
    login_email = LoginEmail.new @driver
    main_nav_bar = MainNavBar.new @driver
    common = Common.new

    # Choose `Login with email`
    login.login_with_email_button.click

    # Enter Username
    login_email.email_text_field.click
    login_email.email_text_field.send_keys("testuser1@cookpad.com")
 
    # Enter Password
    login_email.password_text_field.click
    login_email.password_text_field.send_keys("artycook")

    # Click 'SignIn'
    sign_in_button = login_email.sign_in_button
    common.safe_click(sign_in_button)

    # Assert we are logged in
    explore_nav_button = main_nav_bar.explore_button
    expect(explore_nav_button.displayed?).to eql true
  end
end