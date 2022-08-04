class Prefecture < ApplicationRecord
  has_many :people_living_here, class_name: :Person
  has_many :prefectures_person_wants_to_live_in, class_name: :PrefecturePersonWantsToLiveIn
  has_many :people_wanting_to_live_here, through: :prefectures_person_wants_to_live_in, source: :person

  def self.tokyo
    find(13)
  end
end
