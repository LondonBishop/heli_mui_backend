class EntitySerializer < ActiveModel::Serializer
    attributes :id, 
                :entitytype,
                :account_desc,
                :sortcode,
                :accountnumber,
                :duedate,
                :recurring,
                :accountlines

    def accountlines
      object.accountlines.map do |acc_line|
        {
          id: acc_line.id,
          date: acc_line.date, 
          trans_desc: acc_line.trans_desc, 
          amount: acc_line.amount, 
          balance: acc_line.balance,
          transtype: acc_line.transtype
        }
      end
    end
end
