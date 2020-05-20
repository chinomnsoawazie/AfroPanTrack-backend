class CreateUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      t.string :description
      t.string :organization
      t.string :country
      t.string :source_or_link
      t.string :date

      t.timestamps
    end
  end
end
