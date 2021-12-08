class MainNavBar

    def self.explore_button
        $driver.find_element(:accessibility_id, 'Explore')
    end
end