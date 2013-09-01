require '~/workspace/ruby-bits/tweet.rb'
require '~/workspace/ruby-bits/authenticatable.rb'

t = Tweet.new("Alex", "password")
t.post( Proc.new { puts "ok it worked" } )
