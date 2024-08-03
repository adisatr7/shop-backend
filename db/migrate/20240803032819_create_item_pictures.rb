# typed: true
class CreateItemPictures < ActiveRecord::Migration[7.1]
  def change
    create_table    :item_pictures, id: :uuid  do |t|
      t.references  :item, null: false, foreign_key: { to_table: :items }, type: :uuid
      t.string      :name
      t.string      :url

      t.timestamps
      t.timestamp   :deleted_at, null: true, default: nil
    end
  end
end
