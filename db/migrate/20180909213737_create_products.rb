class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :type
      t.boolean :inStock
      t.string :photo

      t.timestamps
    end
  end
end
