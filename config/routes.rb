# frozen_string_literal: true

Rails.application.routes.draw do
  resources :people do
    resources :assignments, only: [:create]
    resources :tasks
  end

  # resources :tasks
end
