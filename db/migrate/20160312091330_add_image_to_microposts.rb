class AddImageToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :name, :string
    add_column :microposts, :photo, :string
  end
end
