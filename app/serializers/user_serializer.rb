class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :entities
  # has_many :accountlines, through: :entities

  # class EntitySerializer < ActiveModel::Serializer
  #   attributes :id, 
  #               :entitytype,
  #               :account_desc,
  #               :sortcode,
  #               :accountnumber,
  #               :duedate,
  #               :recurring,
  #               :accountlines
                
  # end
end
