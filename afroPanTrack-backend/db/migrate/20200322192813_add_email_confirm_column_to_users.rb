class AddEmailConfirmColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email_confirmed, :boolean, :default => false
    add_column :users, :confirm_token, :string
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :moderator, :boolean, :default => false
    add_column :users, :allowed_to_request, :boolean, :default => false
    add_column :users, :allowed_to_report, :boolean, :default => false
  end
end
