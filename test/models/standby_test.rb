require 'test_helper'

class StandbyTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @standby = @user.standbies.build(date: Time.zone.today)
  end

  test "should be valid" do
    assert @standby.valid?
  end

  test "user id should be present"do
    @standby.user_id = nil
    assert_not @standby.valid?
  end

  test "date should be present"do
    @standby.date = nil
    assert_not @standby.valid?
  end

  test "date should be unique" do
    duplicate_standby = @standby.dup
    @standby.save
    assert_not duplicate_standby.valid?
  end
end
