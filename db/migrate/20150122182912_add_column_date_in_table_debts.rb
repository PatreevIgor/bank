class AddColumnDateInTableDebts < ActiveRecord::Migration
  def change
    add_column :debts, :date, :datetime
  end
end
