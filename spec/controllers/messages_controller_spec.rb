require 'spec_helper'

describe MessagesController do
  context 'routing' do
    it {should route(:post, '/messages').to :action => :create}
  end

  context 'POST create' do
    let(:valid_attributes) {{:nick => 'Stretch', :chat => "Check it out, I'm tall.", :chatroom => "tallguyslounge"}}
    let(:valid_parameters) {{:messages => valid_attributes}}

    it 'creates a new message' do
      expect {post :create, valid_parameters}.to change(Message, :count).by(1)
    end

    before {post :create}
    it {should respond_with 200}
  end
end