require 'test_helper'

class StandbiesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @standby = standbies(:most_recent)
  end

  test "should redirect index when not logged in" do
    assert_no_difference 'Standby.count' do
      get standbies_path
    end
    assert_redirected_to login_url
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Standby.count' do
      post standbies_path, params: { standby: { date: Time.zone.today } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Standby.count' do
      delete standby_path(@standby)
    end
    assert_redirected_to login_url
  end
end
