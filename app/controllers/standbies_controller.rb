class StandbiesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def create
    if current_user.admin?
      @standby = Standby.create(standby_params_for_admin)
      if @standby.save
        flash[:success] = "ランチGO!に予約しました！"
        redirect_to request.referrer
      else
        flash[:danger] = "入力に誤りがあります"
        redirect_to request.referrer || root_url
      end
    else
      @standby = current_user.standbies.build(standby_params)
      if @standby.save
        flash[:success] = "ランチGO!に予約しました！"
        redirect_to root_url
      else
        flash[:danger] = "入力に誤りがあります"
        redirect_to request.referrer || root_url
      end
    end
  end

  def destroy
    @standby.destroy
    flash[:success] = "ランチGO!の予約を取り消しました"
    redirect_to request.referrer || root_url
  end

  private

    def standby_params
      params.require(:standby).permit(:date)
    end

    def standby_params_for_admin
      params.require(:standby).permit(:date, :user_id)
    end

    def correct_user
      @standby = current_user.standbies.find_by(id: params[:id])
      redirect_to root_url if @standby.nil?
    end
end
