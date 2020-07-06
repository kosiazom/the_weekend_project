class CreateGuestLists < ActiveRecord::Migration[6.0]
  def change
    create_table :guest_lists do |t|
      t.integer :party_goer_id
      t.integer :party_id

      t.timestamps
    end
  end
end
