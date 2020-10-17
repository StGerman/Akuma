# frozen_string_literal: true

require 'akuma/client/version'
require 'json_api_client'

module Akuma
  module Client
    class Base < JsonApiClient::Resource
      self.site = ENV.fetch('akuma_url')
    end

    class Task < Base
    end
    class Person < Base
      has_one :assignment
    end
    class Assignment < Base
      belongs_to :person
    end

    class Error < StandardError; end
  end
end
