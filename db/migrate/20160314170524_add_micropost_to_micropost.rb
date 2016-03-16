class AddMicropostToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :micropost, :string
  end
end
