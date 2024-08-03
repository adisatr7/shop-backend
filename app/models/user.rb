# typed: true
class User < ApplicationRecord
  has_many :items, foreign_key: 'seller_id'
  has_many :purchase_histories
end