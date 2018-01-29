class RemoveShopsFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_reference :categories, :shop, foreign_key: true
  end
end
