# frozen_string_literal: true

Rails.application.routes.draw do
  root "requests#index"

  resources :requests do
    member do
      patch :volunteer
      patch :remove_volunteer
    end
  end

  namespace :admin do
    resources :requests do
      member do
        patch :remove_volunteer
      end
    end
  end
end
