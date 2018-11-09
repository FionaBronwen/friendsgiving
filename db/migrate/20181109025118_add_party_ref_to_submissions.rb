class AddPartyRefToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_reference :submissions, :party, foreign_key: true
  end
end
