class CreateFacts < ActiveRecord::Migration[6.0]
  def change
    #categories will be symptoms, transmission, & rummors/myths
    create_table :facts do |t|
      t.string :title
      t.string :description
      t.string :organization
      t.string :source
      t.string :link
      t.string :category
      t.string :date_published

      t.timestamps
    end
  end
end
