class Person < ApplicationRecord
  enum sex: [ :male, :female, :other ]
  scope :male, -> { where(sex: :male) }
  scope :female, -> { where(sex: :female) }
  scope :other, -> { where(sex: :other) }

  validates :nickname, presence: true
  validates :sex, presence: true
end
