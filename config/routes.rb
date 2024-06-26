Rails.application.routes.draw do
  root to: "pages#home"

  resources :lists do
    resources :bookmarks, only: %i[new create destroy]
  end

  resources :bookmarks, only: %i[edit update]
end
