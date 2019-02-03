class CreateKonnos < ActiveRecord::Migration[5.2]
  def change
    create_table :konnos do |t|
      t.text :content

      t.timestamps
    end
  end
end
