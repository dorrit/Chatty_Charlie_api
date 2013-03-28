
describe ChatroomsController do 
  context 'routing' do
    it {should route(:post, '/chatrooms').to :action => :create}
    it {should route(:get, '/chatrooms').to :action => :index}
  end

  context 'POST create' do
    context 'with valid paramters' do 
      let(:valid_attributes) {{:chatroom => 'PinkMadonna'}}
      let(:valid_parameters) {{:chatroom => valid_attributes}}

      it 'creates a new chatroom' do
        expect {post :create, valid_parameters}.to change(Chatroom, :count).by(1)
      end

      before {post :create, valid_parameters}
      it {should respond_with 201}
      it {should respond_with_content_type :json}
      it 'responds with a json representation of the newly-created chatroom' do 
        response.body.should eq Chatroom.find(JSON.parse(response.body)['chatroom']['id']).to_json
      end
    end

    context 'with invalid parameters' do
      let(:invalid_attributes) {{:chatroom => ''}}
      let(:invalid_parameters) {{:chatroom => invalid_attributes}}

      before {post :create, invalid_parameters}

      it {should respond_with 422}
      it {should respond_with_content_type :json}
      it 'responds with a json representation of the errors' do
        response.body.should eq Chatroom.create(invalid_attributes).errors.to_json
      end
    end 
  end

  context 'GET index' do
    before {Chatroom.create({:chatroom => 'PinkMadonna'})}
    before {get :index}

    it {should respond_with 200}
    it {should respond_with_content_type :json}
    it 'responds with a json representation of all the chatrooms' do
      response.body.should eq Chatroom.all.to_json
    end
  end
end