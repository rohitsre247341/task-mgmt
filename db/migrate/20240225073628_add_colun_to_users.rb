class AddColunToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :terms, :string
  end
end
