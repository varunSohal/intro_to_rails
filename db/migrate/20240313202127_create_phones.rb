class CreatePhones < ActiveRecord::Migration[7.1]
  def change
    create_table :phones do |t|
      t.string :modelname
      t.integer :price
      t.integer :IMEInumber

      t.timestamps
    end
  end
end
