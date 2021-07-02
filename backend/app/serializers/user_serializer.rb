class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :username, :email, :password
end
