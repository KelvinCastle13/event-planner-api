Rails.application.routes.draw do
  get "/events" => "events#index"
  get "/events/:id" => "events#show"
  post "/events" => "events#create"
  patch "/events/:id" => "events#update"
  delete "/events/:id" => "events#destroy"
end
