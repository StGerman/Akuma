# frozen_string_literal: true

require 'akuma/client/version'
require 'json_api_client'

module Akuma
  module Client
    class Base < JsonApiClient::Resource
      self.site = ENV.fetch('akuma_url')
    end

    class Task < Base
      belongs_to :person
    end
    class Person < Base
      has_many :assignment
      has_many :tasks
    end
    class Assignment < Base
      belongs_to :person
      has_one :task
    end

    class Error < StandardError; end
  end
end
