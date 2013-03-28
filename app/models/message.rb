class Message < ActiveRecord::Base

  attr_accessible :nick, :chat, :chatroom_id

  validates :chat, :nick, :chatroom_id, :presence => true

  belongs_to :chatroom

end