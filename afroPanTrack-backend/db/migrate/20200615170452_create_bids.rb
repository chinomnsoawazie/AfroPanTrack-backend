class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.belongs_to :barter, null: false, foreign_key: true
      t.integer :user_id
      t.string :qty_offered
      t.boolean :closed_status

      t.timestamps
    end
  end
end
