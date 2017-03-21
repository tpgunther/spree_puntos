require 'rest_client'

module Spree
  module Puntos
    class Puntos
      
      def initialize store_code, env = nil
        self.config = TBK::Webpay::Config.new(env)
        self.config.store_code = store_code
      end

      # First API call that validates if the user have excedentes
      def valitation
        # Create a payment and send ID
      end

      # Second API call that efective execute the payment
      def confirm

      end

      
      def logger message, value
        Rails.logger.send("#{@logfile}").info("[#{@order.number} #{@order.try(:state)}] #{message} #{value}")
      end
    end
  end
end
