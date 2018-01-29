class AddCategoryToShop < ActiveRecord::Migration[5.1]
  def change
    add_reference :shops, :category, foreign_key: true
  end
end
