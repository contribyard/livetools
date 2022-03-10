module Twitch
  class Subscription
    def initialize(user_id, authorization)
      @user_id = user_id
      @authorization = authorization
    end

    def post
      http_client.post(url, headers: auth_header, body: body)
    end

    private

    def auth_header
      { 'Authorization' => "Bearer #{@authorization.access_token}" }
    end

    def http_client
      HTTParty
    end
  end
end