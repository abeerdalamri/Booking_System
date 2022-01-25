class CreateTickts < ActiveRecord::Migration[7.0]
  def change
    create_table :tickts do |t|
      t.string :name
      t.integer :reference
      t.float :price

      t.timestamps
    end
  end
end
