class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.integer :planid
      t.integer :code_currency
      t.integer :quantity
      t.timestamps
    end
  end
end

