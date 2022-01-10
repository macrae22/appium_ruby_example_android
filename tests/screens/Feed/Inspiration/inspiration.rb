module InspirationFeed

    def self.recipe_image_view
        $driver.find_element(:id, 'inspirationRecipeWithImageImageView')
    end
end