module Login_Email

    def self.email_text_field
        $driver.find_element(:id, 'emailEditText')
    end

    def self.password_text_field
        $driver.find_element(:id, 'loginPasswordEditText')
    end

    def self.sign_in_button
        $driver.find_element(:id, 'emailLoginButton')
    end
end