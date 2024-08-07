# typed: true
class Item < ApplicationRecord
  belongs_to :seller, class_name: 'User'
  has_many :item_pictures
  has_many :purchase_histories
  has_many :buyers, through: :purchase_histories, source: :user
end
