class Chatroom < ActiveRecord::Base

  attr_accessible :chatroom

  validates :chatroom, :presence => true

  has_many :messages





end