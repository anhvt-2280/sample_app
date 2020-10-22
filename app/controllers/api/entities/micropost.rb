module API
  module Entities
    class Micropost < Grape::Entity
      expose :id, :content
    end
  end
end
