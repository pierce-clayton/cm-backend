class Animation < ApplicationRecord
  belongs_to :user
  has_one_attached :song
  has_one_attached :background
end
