class AddPartyRefToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_reference :submissions, :party, foreign_key: true
    change_column :submissions, :party_id, :integer, null: false
  end
end
