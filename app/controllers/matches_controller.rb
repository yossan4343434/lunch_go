class MatchesController < ApplicationController
  before_action :admin_user, only: :create

  def create
    create_matches(todays_standbying_uids)
    flash[:success] = "マッチを作成しました！"
    redirect_to request.referrer || root_url
  end

  private

    def todays_standbying_uids
      todays_standbying_uids = Standby.where(date: Time.zone.today).pluck(:user_id)
      matched_ids = Match.where(date: Time.zone.today).pluck(:home_id, :away_id, :referee_id).flatten
      matched_ids.each do |id|
        idx = todays_standbying_uids.index(id)
        next if idx == nil
        todays_standbying_uids.delete_at(idx)
      end
      todays_standbying_uids.shuffle!
    end

    def create_matches(ids)
      if ids.count >= 2
        if ids.count.odd?
          home = ids.shift()
          away = ids.shift()
          referee = ids.shift()
          create_match_trio(Time.zone.today, home, away, referee)
          create_matches_duo(Time.zone.today, ids)
        else
          create_matches_duo(Time.zone.today, ids)
        end
      end
    end

    def create_matches_duo(date, ids)
      if ids.any? && ids.count.even?
        ids.each_slice(2) do |home, away|
          create_match_duo(date, home, away)
        end
      end
    end

    def create_match_duo(date, home, away)
      @match = Match.create(date: date, home_id: home, away_id: away)
    end

    def create_match_trio(date, home, away, referee)
      @match = Match.create(date: date, home_id: home, away_id: away, referee_id: referee)
    end
end
