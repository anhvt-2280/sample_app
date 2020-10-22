module API
  module Helpers
    module AuthenticationAPIHelper
      def authenticate_user!
        token = request.headers["Jwt-Token"]
        user_id = Authentication.decode(token)["user_id"] if token
        current_user = User.find_by id: user_id
        return if current_user

        api_error! "You need to log in to use the app", "failure", 401, {}
      end
    end
  end
end
