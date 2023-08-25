module Toggle
    class Wrapper
      attr_reader :client
  
      def initialize(client)
        @client = client
      end
  
      def on?(toggle_name, options = {})
        @client.enabled?(toggle_name, options)
      end
  
    end
  end
  