module API
  module Entities
    class User < Grape::Entity
      expose :id, :name, :email
      expose :microposts, using: Entities::Micropost
      expose :micropost_count do |user|
        user.microposts.length
      end
    end
  end
end
