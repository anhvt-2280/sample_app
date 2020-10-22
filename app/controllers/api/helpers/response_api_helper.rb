module API
  module Helpers
    module ResponseAPIHelper
      def api_error! message, error_code, status, header
        error!({message: message, code: error_code}, status, header)
      end

      def api_response status_content, data
        response = {status: status_content}.merge(data)
        present response
      end
    end
  end
end
