class UserSerializer < ActiveModel::Serializer
  attributes :user_id, :first_name, :last_name, :email, :phone, :role
end
