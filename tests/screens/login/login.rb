class Login

    attr_accessor :driver
    def initialize(driver)
      @driver = driver
    end

    def login_with_email_button
        @driver.find_element(:id, 'loginWithEmailButton')
    end
end