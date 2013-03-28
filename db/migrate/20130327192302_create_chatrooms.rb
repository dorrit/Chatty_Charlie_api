class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
      t.column :chatroom, :string

      t.timestamps
    end
  end
end
