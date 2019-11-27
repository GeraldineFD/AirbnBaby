class BabyMaterial < ApplicationRecord
  belongs_to :user
  has_many :sales, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }, allow_nil: true
end
