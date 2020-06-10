class CreateHelps < ActiveRecord::Migration[6.0]
  def change
    create_table :helps do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :description
      t.string :date_requested
      t.string :country
      t.string :state
      t.string :city
      t.string :lga
      t.string :city_town_or_village
      t.string :nearest_landmark
      t.string :date_required
      t.integer :helper_id
      t.boolean :done_status
      t.string :help_offer_date
      t.string :date_completed
      t.boolean :request_verified
      t.string :request_verified_by
      t.boolean :help_offer_verified
      t.string :help_offer_verified_by
      t.string :comments

      t.timestamps
    end
  end
end
