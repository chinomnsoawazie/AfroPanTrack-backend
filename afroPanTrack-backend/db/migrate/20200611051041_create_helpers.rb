class CreateHelpers < ActiveRecord::Migration[6.0]
  def change
    create_table :helpers do |t|
      t.integer :user_id
      t.integer :help_id

      t.timestamps
    end
  end
end
