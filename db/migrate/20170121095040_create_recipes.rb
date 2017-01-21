class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :category, index: true
      t.string :name
      t.text :manual
      t.string :image_url
      t.string :youtube_url
      t.datetime :published_at
      t.timestamps
    end
  end
end
