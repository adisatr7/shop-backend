# typed: true
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  before_create :generate_uuid

  private
  # Generate UUID for primary key
  def generate_uuid
    self.id = SecureRandom.uuid if self.id.blank?
  end

  # Soft delete record by updating `deleted_at` column instead of deleting the record
  def soft_delete
    update(deleted_at: Time.current)
  end
end
