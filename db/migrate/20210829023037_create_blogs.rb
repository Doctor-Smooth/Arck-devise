class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
