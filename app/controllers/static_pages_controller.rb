class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @standby = current_user.standbies.build
      @standby_reservations = current_user.standbies_on_or_after_today.paginate(page: params[:page])
      if todays_match = Match.where(date: Time.zone.today).find_by("home_id = #{current_user.id} OR away_id = #{current_user.id} OR referee_id = #{current_user.id}")
        @todays_home = User.find(todays_match.home_id) if todays_match.home_id
        @todays_away = User.find(todays_match.away_id) if todays_match.away_id
        @todays_referee = User.find(todays_match.referee_id) if todays_match.referee_id
      end
    end
  end
end
