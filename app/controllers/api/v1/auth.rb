module API
  module V1
    class Auth < Grape::API
      include API::V1::Defaults

      helpers do
        def represent_user_with_token user
          present jwt_token: Authentication.encode(user_id: user.id)
        end
      end

      resources :auth do
        desc "Sign in"
        params do
          requires :email
          requires :password
        end

        post "/sign_in" do
          user = User.find_by email: params[:email]
          if user&.authenticate params[:password]
            represent_user_with_token user
          else
            api_error! "Invalid email/password combination", 401
          end
        end
      end
    end
  end
end
