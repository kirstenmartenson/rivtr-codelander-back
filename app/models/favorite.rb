class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :video

#Validates unique combination
  validates :user_id, uniqueness: {scope: :video_id}
end
