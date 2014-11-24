class CreateLoos < ActiveRecord::Migration
  def change
    create_table :loos do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :postalCode
      t.string :country
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
