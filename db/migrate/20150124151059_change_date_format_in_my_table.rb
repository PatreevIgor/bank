class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def change
    change_column :debts, :date, :date
  end
end
