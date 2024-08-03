# typed: true
class PurchaseHistory < ApplicationRecord
  belongs_to :items
  belongs_to :users
end
