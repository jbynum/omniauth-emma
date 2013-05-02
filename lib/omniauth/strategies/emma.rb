require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Emma < OmniAuth::Strategies::OAuth2
      option :name, "emma"

      option :client_options, {
              :site => "https://api.e2ma.net",
              :authorize_url => '/oauth/authorize',
              :request_token_url  => "/oauth/request_token",
              :token_url          => '/oauth/token'
            }

      uid{ raw_info['id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end

    end
  end
end