# typed: true
class Item < ApplicationRecord
  belongs_to :seller, class_name: 'User'
  has_many :item_pictures, dependent: :destroy
  has_many :purchase_histories
end
