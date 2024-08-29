class Comment < ApplicationRecord
  validates :body, :author, presence: true
  belongs_to :post
end
