module Authenticatable
  def authenticate?(user = nil, password = nil)
    puts("trying to authenticate user '#{user}' with password '#{password}'")
    password == 'password'
  end
end
