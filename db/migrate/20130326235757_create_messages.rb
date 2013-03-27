class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.column :nick, :string
      t.column :chat, :string
      t.column :chatroom, :string

      t.timestamps
    end
  end
end

