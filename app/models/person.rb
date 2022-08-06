class Person < ApplicationRecord
  belongs_to :live_in, class_name: :Prefecture, foreign_key: :prefecture_id
  has_many :prefectures_person_wants_to_live_in, class_name: :PrefecturePersonWantsToLiveIn, dependent: :destroy
  has_many :prefectures_to_want_to_live_in, through: :prefectures_person_wants_to_live_in, source: :prefecture

  enum sex: [ :male, :female, :other ]
  scope :male, -> { where(sex: :male) }
  scope :female, -> { where(sex: :female) }
  scope :other, -> { where(sex: :other) }

  scope :living_in_tokyo, -> { where(live_in: Prefecture.tokyo) }

  validates :nickname, presence: true
  validates :sex, presence: true
  validates :live_in, presence: true
end
