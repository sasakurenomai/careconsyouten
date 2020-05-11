class AddImagesToUrinals < ActiveRecord::Migration[5.0]
  def change
    add_column :urinals, :urinal_images, :string
  end
end
