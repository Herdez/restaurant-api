class AccountSerializer < ActiveModel::Serializer
  attributes :id, :user, :date, :balance

  def user
    return unless object.user
    instance_options[:without_serializer] ? object.user : UserSerializer.new(object.user, without_serializer: true)
  end
end
