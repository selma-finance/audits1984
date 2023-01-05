Audits1984::Engine.routes.draw do
  resources :sessions, as: :console_sessions, only: %i[ index show ] do
    resources :audits, only: %i[ create update ]
  end

  resource :filtered_sessions, only: %i[ update ]

  root to: "sessions#index"
end
