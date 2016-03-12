class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :photos, index: true, foreign_key: true
    
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps null: false
      
      t.index :email, unique: true
    end
  end
end
