class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :photo

      t.timestamps null: false
    end
  end
end
