class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :question
      t.string :pronunciation
      t.string :string
      t.string :meaning
      t.integer :level

      t.timestamps null: false
    end
  end
end
