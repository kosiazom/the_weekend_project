class CreatePartyGoers < ActiveRecord::Migration[6.0]
  def change
    create_table :party_goers do |t|
      t.string :username
      t.string :tagline
      t.integer :age
      t.string :password_digest
      t.timestamps
    end
  end
end
