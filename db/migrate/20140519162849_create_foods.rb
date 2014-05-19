class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :price
      t.string :description
      t.string :rating

      t.timestamps
    end
  end
end
