class CreateHelpers < ActiveRecord::Migration[6.0]
  def change
    create_table :helpers do |t|
      t.belongs_to :help, null: false, foreign_key: true
      t.interger :helper_id

      t.timestamps
    end
  end
end
