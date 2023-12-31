class Prototype < ApplicationRecord

  belongs_to :user # users テーブルとのアソシエーション
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
  # validates :content, presence: true>

  def self.search(search)
    if search != ''
      Prototype.where('text LIKE(?)', "%#{search}%")
    else
      Prototype.all
    end
  end
end
