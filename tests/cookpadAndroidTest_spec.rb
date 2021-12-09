require './specs/spec_helper'
require './hook.rb'
require './common/common'
Dir["./screens/login/*.rb"].each {|file| require file }

describe 'Login' do

  it 'via email' do

    # Choose `Login with email`
    Login.login_with_email_button.click

    # Enter Username
    Login_Email.email_text_field.click
    Login_Email.email_text_field.send_keys("testuser1@cookpad.com")
 
    # Enter Password
    Login_Email.password_text_field.click
    Login_Email.password_text_field.send_keys("artycook")

    # Click 'SignIn'
    sign_in_button = Login_Email.sign_in_button
    Common.safe_click(sign_in_button)

    # Assert we are logged in
    explore_nav_button = MainNavBar.explore_button
    expect(explore_nav_button.displayed?).to eql true
  end
end