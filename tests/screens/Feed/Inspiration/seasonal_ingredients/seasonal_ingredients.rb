module SeasonalIngredients

    def self.recipe_list_recycler_view
        $driver.find_element(:id, "seasonalRecipeListRecyclerView")
    end

    def self.view_more_button
        $driver.find_element(:id, 'viewMoreButton')
    end
end