class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null:false
      t.string :patron, null:false
      t.timestamps
    end
  end
end
