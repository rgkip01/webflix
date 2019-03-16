class Category < ApplicationRecord
  has_many :series, class_name: 'Serie'
  has_many :movies, class_name: 'Movie'

  validates :name, presence: true, uniqueness: true
end
