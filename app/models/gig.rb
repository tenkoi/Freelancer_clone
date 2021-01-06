class Gig < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :pricing
  has_many_attached :photos
  has_rich_text :description

  accepts_nested_attributes_for :pricing

  validates :title, presence: {message: 'Can not be blank'}
end
