Rails.application.routes.draw do

root to: "users#index"

  # Routes for the Lottery resource:
  # CREATE
  get "/lotteries/new", :controller => "lotteries", :action => "new"
  post "/create_lottery", :controller => "lotteries", :action => "create"

  # READ
  get "/lotteries", :controller => "lotteries", :action => "index"
  get "/lotteries/:id", :controller => "lotteries", :action => "show"

  # UPDATE
  get "/lotteries/:id/edit", :controller => "lotteries", :action => "edit"
  post "/update_lottery/:id", :controller => "lotteries", :action => "update"

  # DELETE
  get "/delete_lottery/:id", :controller => "lotteries", :action => "destroy"
  #------------------------------

  # Routes for the Transaction resource:
  # CREATE
  get "/transactions/new", :controller => "transactions", :action => "new"
  post "/create_transaction", :controller => "transactions", :action => "create"

  # READ
  get "/transactions", :controller => "transactions", :action => "index"
  get "/transactions/:id", :controller => "transactions", :action => "show"

  # UPDATE
  get "/transactions/:id/edit", :controller => "transactions", :action => "edit"
  post "/update_transaction/:id", :controller => "transactions", :action => "update"

  # DELETE
  get "/delete_transaction/:id", :controller => "transactions", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"



end
