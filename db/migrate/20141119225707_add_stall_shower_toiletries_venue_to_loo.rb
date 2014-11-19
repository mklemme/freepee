class AddStallShowerToiletriesVenueToLoo < ActiveRecord::Migration
  def change
    add_column :loos, :stall, :string
    add_column :loos, :shower, :boolean
    add_column :loos, :toiletries, :boolean
    add_column :loos, :venue, :string
  end
end
