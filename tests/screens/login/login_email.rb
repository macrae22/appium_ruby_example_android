class LoginEmail

    attr_accessor :driver
    def initialize(driver)
      @driver = driver
    end

    def email_text_field
        @driver.find_element(:id, 'emailEditText')
    end

    def password_text_field
        @driver.find_element(:id, 'loginPasswordEditText')
    end

    def sign_in_button
        @driver.find_element(:id, 'emailLoginButton')
    end
end