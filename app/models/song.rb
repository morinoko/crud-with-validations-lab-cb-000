class Song < ActiveRecord::Base
  include ReleaseYearPresenceValidator
  validates :title, presence: true
  validates :release_year, numericality: { less_than_or_equal_to: Time.now.year, allow_nil: true }
  validates_with ReleaseYearPresenceValidator
  validates :artist_name, presence: true
  validates :genre, presence: true
end
