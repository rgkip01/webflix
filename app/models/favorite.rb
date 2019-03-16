class Favorite < ApplicationRecord
  belongs_to :favoritable, polymorphic: true
  belongs_to :user
  validates :user_id, uniqueness: { scope: [:favoritable_type, :favoritable_id], message: "Can favorite only one time per resource" }  
end
