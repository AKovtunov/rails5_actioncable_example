class ImporveMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :user_id, :integer, null: false
    add_column :messages, :room_id, :integer, null: false, default: 0
  end
end
