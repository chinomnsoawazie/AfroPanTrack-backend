class CreateFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :facts do |t|
      t.string :organization
      t.string :source_or_link
      t.string :date_published

      t.timestamps
    end
  end
end
