module LoginScenarios

    def self.login(username: "testuser10@cookpad.com", password: "Cookpad12345")
    # Tap Log in from Inspiration Tab
    InspirationTab.overlay_login_button.click

    # Choose `Login with email`
    Login.login_with_email_button.click

    # Enter Username
    Login_Email.email_text_field.click
    Login_Email.email_text_field.send_keys(username)
 
    # Enter Password
    Login_Email.password_text_field.click
    Login_Email.password_text_field.send_keys(password)

    # Click 'SignIn'
    sign_in_button = Login_Email.sign_in_button
    Common.safe_click(sign_in_button)
    
    # Wait for `explore` nav button to appear
    explore_button = explore_nav_button = MainNavBar.explore_button
    wait { explore_button }
    end
end
