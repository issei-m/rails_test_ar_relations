class PrefecturePersonWantsToLiveIn < ApplicationRecord
  self.table_name = :prefectures_person_wants_to_live_in

  belongs_to :prefecture
  belongs_to :person
end
