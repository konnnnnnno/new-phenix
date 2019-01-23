class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      #contensになっている　修正が必要
      t.text :contens

      t.timestamps
    end
  end
end
