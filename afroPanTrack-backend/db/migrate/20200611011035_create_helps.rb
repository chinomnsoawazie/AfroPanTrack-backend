class CreateHelps < ActiveRecord::Migration[6.0]
  def change
    create_table :helps do |t|
      t.string :description
      t.string :qty_requested
      t.string :date_requested
      t.string :country
      t.string :state
      t.string :city
      t.string :lga
      t.string :city_town_or_village
      t.string :nearest_landmark
      t.string :date_required
      t.integer :helper_id
      t.integer :user_id
      t.boolean :done_status, :default => false
      t.string :help_offer_date
      t.string :date_completed
      t.boolean :request_verified, :default => false
      t.string :request_verified_by
      t.boolean :help_offer_verified, :default => false
      t.string :help_offer_verified_by
      t.string :comments

      t.timestamps
    end
  end
end
