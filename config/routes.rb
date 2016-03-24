Rails.application.routes.draw do
  resources :task_lists do
    member do
      get 'view_task', action: :view_task
    end
    resources :task_items do
      member do
        patch :complete
      end
    end
  end
  
  get '/dashboard' => 'pages#dashboard'
  
  root to: "task_lists#index"
end