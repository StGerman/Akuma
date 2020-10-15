# frozen_string_literal: true

Rails.application.routes.draw do
  jsonapi_resources :tasks
  jsonapi_resources :people
end
