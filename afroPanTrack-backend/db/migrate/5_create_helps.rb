class CreateHelps < ActiveRecord::Migration[6.0]
  def change
    create_table :helps do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :requestor_id
      t.string :description
      t.string :date_requested
      t.string :location
      t.string :date_required
      t.integer :helper_id
      t.boolean :status
      t.string :help_offer_date
      t.string :date_completed
      t.boolean :verified
      t.string :verified_by
      t.string :comments

      t.timestamps
    end
  end
end
