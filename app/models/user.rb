class User < ApplicationRecord

class << self
  def from_omniauth(auth_hash)
    user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
    info = auth_hash.symbolize_keys!
    user.name = info.name
    user.avatar = info.image
    user.save!
    user
  end
end


end
