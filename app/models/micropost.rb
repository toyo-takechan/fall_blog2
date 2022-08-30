class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :image,   content_type: { in: %w[image/jpeg image/gif image/png],
                                      message: "must be a valid image format" },
                      # dimension: { width: { min: 800, max: 2400 },
                      #                             height: { min: 600, max: 1800 }, message: 'is not given between dimension' },
                      size:         { less_than: 5.megabytes,
                                      message: "should be less than 5MB" }

# 表示用のリサイズ済み画像を返す
  # def display_image
  #   image.variant(resize_to_limit: [1000, 1000])
  # end
end
