Rails.application.routes.draw do
  get "/teachers" => "teachers#index"
  post "/teachers" => "teachers#create"
  get "/teachers/:id" => "teachers#show"
  patch "/teachers/:id" => "teachers#update"
  delete "/teachers/:id" => "teachers#destroy"
end
