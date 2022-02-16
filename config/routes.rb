Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
    end

    member do
      get :chef
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
  # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants
  # get 'restaurants/:id/chef', to: 'restaurants#chef', as: :chef_restaurant

  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review

end
