class Child < ApplicationRecord
  has_many :child_picks, dependent: :destroy
  validates :name, presence: true, length: { maximum: 255 },
            uniqueness: true
end
