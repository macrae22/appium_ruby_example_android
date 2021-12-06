class Common

    def safe_click(element)
        print "Waiting for element to be enabled...\n"
        wait = Selenium::WebDriver::Wait.new :timeout => 10
        wait.until { element.enabled? }
        print "Element enabled!\n"
        element.click
    end
end