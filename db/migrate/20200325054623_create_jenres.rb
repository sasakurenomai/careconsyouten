class CreateJenres < ActiveRecord::Migration[5.0]
  def change
    create_table :jenres do |t|
      t.text :subject, null: false
      t.timestamps
    end
  end
end
