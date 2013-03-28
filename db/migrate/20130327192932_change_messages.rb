class ChangeMessages < ActiveRecord::Migration
  def change
      add_column :messages, :chatroom_id, :integer
      remove_column :messages, :chatroom
  end
end
