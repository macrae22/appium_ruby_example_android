require './specs/spec_helper'
require './hook.rb'
require './common/common'
require './screens/explore/inspiration_tab.rb'
require './screens/recipeView/recipeView.rb'
require './screens/feed/inspiration/inspiration.rb'
Dir["./screens/login/*.rb"].each {|file| require file }

describe 'Guest user can' do

  it 'View recipe in Inspiration tab' do

    # Wait for Feed to be displayed
    wait { MainNavBar.explore_button }

    # Scroll down and click on recipe
    Common.scroll_to("inspirationRecipeWithImageImageView")
    InspirationFeed.recipe_image_view.click

    # Assert we are on the recipe screen
    recipe_title = RecipeView.title_text_view
    expect(recipe_title.displayed?).to eql true
  end
end