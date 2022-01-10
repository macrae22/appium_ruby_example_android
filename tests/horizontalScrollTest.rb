require './specs/spec_helper'
require './hook.rb'
require './common/common'
require './screens/device/device'
require './screens/explore/inspiration_tab.rb'
require './screens/feed/inspiration/seasonal_ingredients/seasonal_ingredients.rb'
require './screens/feed/inspiration/inspiration.rb'
Dir["./screens/login/*.rb"].each {|file| require file }

describe 'Seasonal Ingredients' do

    it '`View all` recipes button opens search' do
    
      # Wait for Feed to be displayed
      wait { MainNavBar.explore_button }
  
      # Wait for seasonal ingredients to display within Feed
      exists { SeasonalIngredients.recipe_list_recycler_view.displayed? }
      
      # Swipe horizontally to `view all recipes` button
      Common.swipe_to("feedIngredientRecipesRecyclerView", "viewMoreButton")

      # Click `view more buttton`
      SeasonalIngredients.view_more_button.click()

      # Accept location permissions
      allowAccessButton = $driver.find_element(:id, 'locationPermissionPositiveCtaTextView')
      allowAccessButton.click()

      # Accept device location permissions
      Device::Location_Permissions.location_permission_allow_button.click()

      # Confirm `search nav` is enabled
      search_nav_button = MainNavBar.search_button
      expect(search_nav_button.enabled?).to eql true
      end
end