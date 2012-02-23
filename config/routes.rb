GoalIe::Application.routes.draw do

  devise_for :users

  resources :teams do
    resources :sprints do
      resources :action_items
      resources :agreements
    end
  end
  root :to => 'teams#index'


end
