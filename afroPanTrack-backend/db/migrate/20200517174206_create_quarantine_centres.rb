class CreateQuarantineCentres < ActiveRecord::Migration[6.0]
  def change
    create_table :quarantine_centres do |t|
      t.string :name
      t.string :country
      t.string :state
      t.string :city
      t.string :lga
      t.string :city_town_or_village
      t.string :nearest_landmark
      t.float :lat
      t.float :lng
      t.integer :phone
      t.string :email
      t.boolean :verified
      t.string :verified_by
      t.string :verification_notes

      t.timestamps
    end
  end
end
