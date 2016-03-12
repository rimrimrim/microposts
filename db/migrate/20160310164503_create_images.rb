class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :user, index: true, foreign_key: true
      t.text :caption
      t.string :picture

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end
