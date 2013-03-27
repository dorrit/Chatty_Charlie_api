ChattyApi::Application.routes.draw do
  match 'messages' => 'messages#create', :via => :post
end
