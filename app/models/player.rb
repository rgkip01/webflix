class Player < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  before_create :set_star_date

  private

    def set_star_date
      self.star_date ||= Time.zone.now
    end
end
