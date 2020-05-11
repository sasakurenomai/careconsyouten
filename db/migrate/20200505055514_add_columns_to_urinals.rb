class AddColumnsToUrinals < ActiveRecord::Migration[5.0]
  def change
    add_column :urinals, :title_b, :text, :after => :title_a
    add_column :urinals, :title_c, :text, :after => :title_b
    add_column :urinals, :title_d, :text, :after => :title_c
    add_column :urinals, :content_b, :text, :after => :content_a
    add_column :urinals, :content_c, :text, :after => :content_b
    add_column :urinals, :content_d, :text, :after => :content_c
  end
end
