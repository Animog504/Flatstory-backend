class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :email
end
