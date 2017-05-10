class AddIndexFoodsName < ActiveRecord::Migration[5.0]
  def change
    add_index :foods, :name
  end
end
