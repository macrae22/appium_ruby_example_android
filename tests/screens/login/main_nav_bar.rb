module MainNavBar

    def self.explore_button
        $driver.find_element(:accessibility_id, 'Explore')
    end

    def self.search_button
        $driver.find_element(:accessibility_id, 'Search')
    end
end