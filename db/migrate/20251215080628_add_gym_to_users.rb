class AddGymToUsers < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :gym, null: false, foreign_key: true
  end
end
