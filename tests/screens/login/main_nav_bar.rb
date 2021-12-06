class MainNavBar

    attr_accessor :driver
    def initialize(driver)
      @driver = driver
    end

    def explore_button
        @driver.find_element(:accessibility_id, 'Explore')
    end
end