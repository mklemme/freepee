class CreateLoos < ActiveRecord::Migration
  def change
    create_table :loos do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
