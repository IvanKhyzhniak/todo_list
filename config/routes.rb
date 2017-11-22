Rails.application.routes.draw do
  
  resources :todo_lists do
    resources :todo_items do
        put :complete, on: :member
    end
  end
  
  root "todo_lists#index"
end
