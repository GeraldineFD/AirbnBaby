class BabyMaterial < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :sales
  validates :title, presence: true
  validates :description, presence: true
  validates :price, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end
