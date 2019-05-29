class CreateEntitytypes < ActiveRecord::Migration[5.2]
  def change
    create_table :entitytypes do |t|
      t.string :entity_desc

      t.timestamps
    end
  end
end
