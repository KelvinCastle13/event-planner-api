Rails.application.routes.draw do
  get "/events" => "events#index"
  get "/events/:id" => "events#show"
  post "/events" => "events#create"
  patch "/events/:id" => "events#update"
  delete "/events/:id" => "events#destroy"

  get "/attendees" => "attendees#index"
  get "/attendees/:id" => "attendees#show"
  post "/attendees" => "attendees#create"
  patch "/attendees/:id" => "attendees#update"
  delete "/attendees/:id" => "attendees#destroy"

  get "/registrations" => "registrations#index"
  get "/registrations/:id" => "registrations#show"
  post "/registrations" => "registrations#create"
  patch "/registrations/:id" => "registrations#update"
  delete "/registrations/:id" => "registrations#destroy"
end
