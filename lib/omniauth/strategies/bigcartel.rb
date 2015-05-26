require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bigcartel < OmniAuth::Strategies::OAuth2
      option :name, :bigcartel

      option :client_options, {
                                site: 'https://api.bigcartel.com',
                                authorize_url: 'https://my.bigcartel.com/oauth/authorize',
                                token_url: 'https://api.bigcartel.com/oauth/token'
                            }

      uid do
        access_token.params['account_id']
      end

      info do
        {
            name: access_token.params['store_name'],
            email: access_token.params['contact_email'],
            url: access_token.params['url']
        }
      end
    end
  end
end