class CreateAccountlines < ActiveRecord::Migration[5.2]
  def change
    create_table :accountlines do |t|
      t.references :transtype, foreign_key: true
      t.datetime :date
      t.string :trans_desc
      t.decimal :amount
      t.decimal :balance
      t.timestamps
    end
  end
end
