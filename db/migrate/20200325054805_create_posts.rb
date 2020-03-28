class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :title, null: false
      t.text :content, null: false
      t.text :image
      t.references :jenre, foreign_key: true
      t.timestamps
    end
  end
end
