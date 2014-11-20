class ChangeRatingFormatInRatings < ActiveRecord::Migration
  def change
    change_column :ratings, :rating, :decimal
  end
end
