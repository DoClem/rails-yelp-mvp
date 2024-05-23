class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true

  VALID_CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: VALID_CATEGORY }
end
