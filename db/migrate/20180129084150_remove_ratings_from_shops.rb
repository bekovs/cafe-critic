class RemoveRatingsFromShops < ActiveRecord::Migration[5.1]
  def change
    remove_reference :shops, :rating, foreign_key: true
  end
end
