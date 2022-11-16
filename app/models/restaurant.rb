class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: CATEGORY }

end
