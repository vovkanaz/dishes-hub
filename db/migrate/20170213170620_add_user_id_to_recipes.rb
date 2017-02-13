class AddUserIdToRecipes < ActiveRecord::Migration[5.0]
  def change
    drop_table :recipes
    create_table :recipes do |t|
      t.belongs_to :category, index: true
      t.belongs_to :user, index: true
      t.string :name
      t.text :manual
      t.timestamps
    end  
  end
end
