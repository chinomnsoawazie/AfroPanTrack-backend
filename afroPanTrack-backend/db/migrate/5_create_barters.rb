class CreateBarters < ActiveRecord::Migration[6.0]
  def change
    create_table :barters do |t|
      t.string :requestor_id
      t.string :item_description
      t.string :quantity
      t.string :category
      t.boolean :done
      t.string :receiver_id
      t.string :date_done
      t.boolean :verified
      t.string :verified_by
      t.string :comments

      t.timestamps
    end
  end
end
