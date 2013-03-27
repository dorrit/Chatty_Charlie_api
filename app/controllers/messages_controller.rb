class MessagesController < ApplicationController
  def create
    Message.create(params[:message])
  end
end