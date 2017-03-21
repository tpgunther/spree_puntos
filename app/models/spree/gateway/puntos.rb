module Spree
  class Gateway::Puntos < Gateway
    preference :code, :string

    def self.STATE
      'puntos'
    end

    def auto_capture?
      false
    end

    def method_type
      'puntos'
    end

    def provider_class
      TBK::Webpay::Puntos
    end

    def provider
      provider_class.new
    end

  end
end
