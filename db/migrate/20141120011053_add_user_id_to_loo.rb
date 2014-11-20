class AddUserIdToLoo < ActiveRecord::Migration
  def change
    add_column :loos, :user_id, :integer
  end
end
