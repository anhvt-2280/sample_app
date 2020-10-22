module API
  module V1
    module Defaults
      extend ActiveSupport::Concern

      included do
        prefix "api"
        version "v1", using: :path
        format :json

        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response message: e.message, status: 404
        end

        rescue_from :all do |e|
          raise e if Rails.env.development?

          error_response message: e.message, status: 500
        end

        helpers API::Helpers::AuthenticationAPIHelper,
                API::Helpers::ResponseAPIHelper
      end
    end
  end
end
