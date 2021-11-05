require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get games" do
    get home_games_url
    assert_response :success
  end

  test "should get highscores" do
    get home_highscores_url
    assert_response :success
  end

end
