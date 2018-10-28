Rails.application.routes.draw do
  resources :enterprises
  resources :enterprise_sectors
  resources :users
  resources :blood_types
  resources :document_types
  resources :genders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
