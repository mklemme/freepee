class ChangeRatingFormatInRatings < ActiveRecord::Migration
  def self.up
    change_column :ratings, :rating, :decimal
  end
  def self.down
    remove_column :ratings, :rating
  end
end
