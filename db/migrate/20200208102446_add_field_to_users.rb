class AddFieldToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :text
    add_reference :comments, :user, foreign_key: true

  end
end
