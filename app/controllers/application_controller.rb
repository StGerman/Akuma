# frozen_string_literal: true

class ApplicationController < ActionController::API
  include JSONAPI::ActsAsResourceController

  private

  def current_person
    # TODO: use warden for autentification
    @current_person ||= Person.first
  end
end
