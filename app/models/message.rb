class Message < ActiveRecord::Base
  
  attr_accessible :nick, :chat, :chatroom

  validates :chat, :nick, :chatroom, :presence => true

end