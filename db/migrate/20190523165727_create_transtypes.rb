class CreateTranstypes < ActiveRecord::Migration[5.2]
  def change
    create_table :transtypes do |t|
      t.string :ttype

      t.timestamps
    end
  end
end
