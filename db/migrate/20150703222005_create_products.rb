class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title,null: false
      t.decimal :price,null: false
      t.boolean :published,default: false
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :products, :user_id
  end
end
