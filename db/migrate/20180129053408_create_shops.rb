class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :title
      t.string :image
      t.references :rating, foreign_key: true

      t.timestamps
    end
  end
end
