class CreateHelpers < ActiveRecord::Migration[6.0]
  def change
    create_table :helpers do |t|
      t.integer :user_id
      t.integer :help_id
      t.string :qty_offered
      t.boolean :help_offer_accepted, :default => false
      t.boolean :followed_through, :default => false
      t.boolean :make_me_anonymous, :default => false
      t.timestamps
    end
  end
end
