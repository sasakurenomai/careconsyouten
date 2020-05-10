class CreateUrinals < ActiveRecord::Migration[5.0]
  def change
    create_table :urinals do |t|
      t.text :title_a, null: false
      t.text :content_a, null: false
      t.references :jenre, foreign_key: true
      t.timestamps
    end
  end
end
