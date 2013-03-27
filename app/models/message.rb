class Message < ActiveRecord::Base
  validates :chat, :nick, :chatroom, :presence => true

end