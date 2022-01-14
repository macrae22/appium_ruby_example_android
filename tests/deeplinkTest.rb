require './specs/spec_helper'
require './hook.rb'
require './common/common'
require './screens/explore/inspiration_tab.rb'
require './screens/recipeView/recipeView.rb'
require './screens/feed/inspiration/inspiration.rb'
require './scenarios/login/login_scenarios.rb'
Dir["./screens/login/*.rb"].each {|file| require file }

describe 'Deeplinks' do

  it 'Can open recipe within app' do

    # Login
    LoginScenarios.login()

    # Open deeplink
    $driver.get("https://cookpad.com/us/recipes/15678199")
    
    # Confirm recipe displayed
    recipeTitle = RecipeView.title_text_view
    expect(recipeTitle.displayed?).to eql true
  end
end