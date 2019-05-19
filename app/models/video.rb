class Video < ApplicationRecord
  has_many :favorites

  belongs_to :category

  validates :name, presence: true
  validates :category, presence: true
end
