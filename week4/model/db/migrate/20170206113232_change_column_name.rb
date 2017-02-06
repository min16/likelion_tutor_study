class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :email, :mail
  end
end
