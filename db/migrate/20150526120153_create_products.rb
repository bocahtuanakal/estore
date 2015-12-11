class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :category_id
      t.string :pdimg
      t.text :description

      t.timestamps
    end
  end
end
