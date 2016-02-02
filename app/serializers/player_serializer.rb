class PlayerSerializer < ActiveModel::Serializer
  attributes :PlayerId, :first_name, :last_name, :email, :gender
end
