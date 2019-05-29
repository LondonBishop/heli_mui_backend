class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.references :user, foreign_key: true
      t.references :entitytype, foreign_key: true
      t.string :account_desc
      t.string :sortcode
      t.string :accountnumber
      t.datetime :duedate
      t.string :recurring
      t.timestamps
    end
  end
end
