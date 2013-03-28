class ChatroomsController < ApplicationController
  def create
    chatroom = Chatroom.create(params[:chatroom])
    if chatroom.save
      render :json => chatroom, :status => :created
    else
      render :json => chatroom.errors, :status => :unprocessable_entity
    end
  end

  def index
    chatrooms = Chatroom.all
    render :json => chatrooms
  end
end