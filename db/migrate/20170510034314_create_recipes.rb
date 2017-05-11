class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :image
      t.references :user
      t.timestamps
    end
  end
end
