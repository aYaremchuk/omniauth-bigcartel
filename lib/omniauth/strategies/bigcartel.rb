require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Bigcartel < OmniAuth::Strategies::OAuth2
      option :name, :bigcartel

      option :client_options, site: 'https://my.bigcartel.com'


      uid do
        access_token.params['store']['id']
      end

      info do
        {
            name: access_token.params['store']['name'],
            email: access_token.params['store']['storekeeper_email'],
            url: access_token.params['store']['url']
        }
      end
    end
  end
end