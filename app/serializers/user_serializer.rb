class UserSerializer < ActiveModel::Serializer
  attributes :email, :first_name, :last_name, :phone, :authentication_token
end
