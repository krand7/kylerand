class AddKyleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :kyle, :boolean, default: false, null: false
  end
end
