class AddBooleanFavoriteToBooks < ActiveRecord::Migration
  def up
    add_column :books, :rating, :boolean
  end

  def down
    remove_column :books, :rating, :boolean
  end
end
