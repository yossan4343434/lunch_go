class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @standby = current_user.standbies.build
      @standby_reservations = current_user.standbies_on_or_after_today.paginate(page: params[:page])
    end
  end
end
