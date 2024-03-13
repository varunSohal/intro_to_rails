class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :employeeid
      t.integer :salary

      t.timestamps
    end
  end
end
