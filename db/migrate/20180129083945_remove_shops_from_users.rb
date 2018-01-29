class RemoveShopsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :shop, foreign_key: true
  end
end
