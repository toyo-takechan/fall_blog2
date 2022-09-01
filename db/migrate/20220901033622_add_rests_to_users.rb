class AddRestsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :reset_digest, :string
    add_column :users, :reset_set_at, :datetime
  end
end
