module API
  module V1
    class Base < Grape::API
      mount V1::Users
      mount V1::Auth
    end
  end
end
