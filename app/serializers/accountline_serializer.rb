class AccountlineSerializer < ActiveModel::Serializer
  attributes  :id, 
              :date, 
              :trans_dec, 
              :amount, 
              :balance,
              :transtype
end
