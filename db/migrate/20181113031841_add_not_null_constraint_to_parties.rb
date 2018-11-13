class AddNotNullConstraintToParties < ActiveRecord::Migration[5.0]
  def up
  	change_column :parties, :name, :string, null: false
  	add_index :parties, :name, unique: true
  end

  def down
  	change_column :parties, :name, :string, null: true, unique: false
  	remove_index :parties, :name
  end
end
