class RenameRatingRating < ActiveRecord::Migration
  def change
    rename_column :ratings, :rating, :score
  end
end
