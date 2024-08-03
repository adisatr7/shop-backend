# typed: true
class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table    :items, id: :uuid do |t|
      t.references  :seller, null: false, foreign_key: { to_table: :users }, type: :uuid
      t.string      :name
      t.integer     :price
      t.string      :desc

      t.timestamps
      t.datetime    :deleted_at, null: true, default: nil
    end
  end
end
