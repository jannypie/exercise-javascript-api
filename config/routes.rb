Rails.application.routes.draw do

  root to: "pages#home"

  namespace :api do
    resources :posts, only: %i[index show create update destroy]
  end

end
