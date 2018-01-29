class RemoveRatingsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :rating, foreign_key: true
  end
end
