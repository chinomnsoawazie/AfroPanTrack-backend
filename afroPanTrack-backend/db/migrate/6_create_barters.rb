class CreateBarters < ActiveRecord::Migration[6.0]
  def change
    create_table :barters do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :item_description
      t.string :quantity_requested
      t.string :quantity_received
      t.string :category
      t.string :country
      t.string :state
      t.string :city
      t.string :lga
      t.string :city_town_or_village
      t.string :nearest_landmark
      t.string :date_required
      t.boolean :done, :default => false
      t.integer :receiver_id
      t.string :date_done
      t.boolean :verified, :default => false
      t.string :verified_by
      t.string :comments

      t.timestamps
    end
  end
end
