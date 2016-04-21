class AddGuestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isGuest, :boolean, default: false
  end
end
