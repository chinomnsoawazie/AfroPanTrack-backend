class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :phone_no, :limit => 8
      t.string :country
      t.string :state
      t.string :province
      t.string :city
      t.string :lga
      t.string :street_address
      t.string :facebook_name
      t.string :twitter_handle
      t.boolean :ban_status
      t.string :ban_date

      t.timestamps
    end
  end
end
