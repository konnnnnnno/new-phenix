class UserIdToPosts < ActiveRecord::Migration[5.2]
  def change
  add_column :konnos, :user_id, :integer
  end
end
