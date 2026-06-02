# frozen_string_literal: true

Rails.application.routes.draw do
  root "requests#index"

  resources :requests do
    member do
      patch :volunteer
    end
  end
end
