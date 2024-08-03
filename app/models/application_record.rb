# typed: true
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  before_create :generate_uuid

  private
  def generate_uuid
    self.id = SecureRandom.uuid if self.id.blank?
  end
end
