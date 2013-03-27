ChattyApi::Application.routes.draw do
  match 'messages' => 'messages#create', :via => :post
  match 'messages' => 'messages#index', :via => :get
end
