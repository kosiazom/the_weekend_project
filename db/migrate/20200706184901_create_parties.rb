class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.integer :dj_id
      t.integer :promoter_id
      t.timestamps
    end
  end
end
