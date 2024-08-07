# typed: true
class User < ApplicationRecord
  has_many :sold_items, class_name: 'Item', foreign_key: 'seller_id'
  has_many :purchase_histories, class_name: 'PurchaseHistory', foreign_key: 'user_id'
  has_many :purchased_items, class_name: 'Item', through: :purchase_histories
end