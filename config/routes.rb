Rails.application.routes.draw do
  resources :user_activities
  resources :habits
  resources :users
  resources :activities do
    resources :records
  end

  patch '/user_activities/new', to: 'user_activities#new', as: "add_habit_to_me"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
