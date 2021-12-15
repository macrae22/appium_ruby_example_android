require './specs/spec_helper'

module Common

    def self.safe_click(element)
        print "Waiting for element to be enabled...\n"
        wait = Selenium::WebDriver::Wait.new :timeout => 10
        wait.until { element.enabled? }
        print "Element enabled!\n"
        element.click
    end

    def self.scroll_to(strategy = :id, element)
        (0...10).each do

            print "Looking for element(s)...\n"
            ele = exists { find_element(strategy, element).displayed? } # Check whether element exists
            
            if ele == true # If element exsits break the loop
                print "Element displayed!"
                break
            else
                print "Swiping...\n" # If element doesn't exsit then swipe down
                $touch.swipe(start_x: 144, start_y: 700, end_x: 144, end_y: 400, duration: 500).perform # scroll down
            end
        end
    end
end