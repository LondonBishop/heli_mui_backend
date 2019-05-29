class AddColumnAccountlinesTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :accountlines, :entity, index: true
    add_foreign_key :accountlines, :entities
  end
end
