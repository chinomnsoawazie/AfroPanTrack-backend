class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.string :country
      t.string :state
      t.string :city
      t.string :lga
      t.string :city_town_or_village
      t.string :nearest_landmark
      t.string :persons_involved
      t.string :description
      t.float :lat
      t.float :lng
      t.string :date_reported
      t.boolean :medical_attention_observed, :default => false
      t.string :medical_attention_description
      t.boolean :can_we_follow_up, :default => true
      t.boolean :verified, :default => false
      t.string :verified_by
      t.string :verification_notes

      t.timestamps
    end
  end
end
