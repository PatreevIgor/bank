class CreateTypeOfCurrencies < ActiveRecord::Migration
  def change
    create_table :type_of_currencies do |t|
      t.integer :code
      t.string :type
      t.timestamps
    end
  end
end
