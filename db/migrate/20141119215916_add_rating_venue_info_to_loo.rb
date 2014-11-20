class AddRatingVenueInfoToLoo < ActiveRecord::Migration
  def change
    add_column :loos, :rating, :float
    add_column :loos, :key, :boolean
    add_column :loos, :baby_changing, :boolean
    add_column :loos, :handicapped, :boolean
    add_column :loos, :cost, :string
  end
end
