class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.integer :party_id
      t.integer :party_goer_id
      t.timestamps
    end
  end
end
