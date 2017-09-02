require 'test_helper'

class StandbiesInterfaceTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
  end

  test "standbies interface" do
    log_in_as(@user)
    get standbies_path
  end
end
