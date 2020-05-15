class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :phone_no
      t.string :country
      t.string :state
      t.string :street_address
      t.string :facebook_name
      t.string :twitter_handle

      t.timestamps
    end
  end
end
