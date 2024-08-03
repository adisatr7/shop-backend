class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table  :users, id: :uuid do |t|
      t.string    :name
      t.string    :email
      t.string    :password
      t.string    :avatar_url

      t.timestamps
      t.timestamp :deleted_at, null: true, default: nil
      t.index     :email, unique: true
    end
  end
end
