class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :contribution

      t.timestamps
    end
  end
end
