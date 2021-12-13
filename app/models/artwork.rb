class Artwork < ApplicationRecord
  belongs_to :user
  has_many_attached :photo

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, numericality: { greater_than: 0 }
end
