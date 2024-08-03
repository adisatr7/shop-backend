class CreatePurchaseHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :purchase_histories, id: :uuid do |t|
      t.references :item, null: false, foreign_key: { to_table: :items }, type: :uuid
      t.references :user, null: false, foreign_key: { to_table: :users }, type: :uuid

      t.timestamps
      t.timestamp :deleted_at, null: true, default: nil
    end
  end
end
