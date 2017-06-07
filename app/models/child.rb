class Child < ApplicationRecord
  has_many :child_picks
  validates :name, presence: true, length: { maximum: 255 },
            uniqueness: true
end
