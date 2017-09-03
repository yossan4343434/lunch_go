class Match < ApplicationRecord
  validates :date, presence: true, timeliness: { on_or_after: Time.zone.today }
  validates :home_id, presence: true, uniqueness: { scope: [:date] }
  validates :away_id, presence: true, uniqueness: { scope: [:date] }
  validates :referee_id, uniqueness: { scope: [:date] }, allow_nil: true
end
