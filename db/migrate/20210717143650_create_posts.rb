class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
