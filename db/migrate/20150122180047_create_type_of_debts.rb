class CreateTypeOfDebts < ActiveRecord::Migration
  def change
    create_table :type_of_debts do |t|
      t.integer :planid
      t.string :type
      t.timestamps
    end
  end
end
