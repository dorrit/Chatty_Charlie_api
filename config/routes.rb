ChattyApi::Application.routes.draw do
  match 'messages' => 'messages#create', :via => :post
  match 'messages' => 'messages#index', :via => :get
  match 'chatrooms' => 'chatrooms#create', :via => :post
  match 'chatrooms' => 'chatrooms#index', :via => :get
end
