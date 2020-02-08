class Question < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable

  #Validations
  validates :title, presence: true
end
