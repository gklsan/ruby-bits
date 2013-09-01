require '~/workspace/ruby-bits/authenticatable.rb'

class Tweet
  include Authenticatable
  def initialize(user, password)
    @user = user
    @password = password
  end

  def post(success)
    if authenticate?(@user, @password)
      # submit the tweet
      success.call
    else
      raise 'Auth Error'
    end
  end
end
