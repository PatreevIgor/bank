class ImportingStuff

  def self.import_data_from_file_debt(location)
    clear_debet_table
    clear_type_of_currency_table
    clear_type_of_debts

    imported_data = SimpleXlsxReader.open(location) # импортируем ексель таблицу '/home/patron/Projects/workbook.xlsx'

    imported_data_without_title_for_page_1 = remove_the_column_titles(imported_data, 0)
    import_in_db_debts(imported_data_without_title_for_page_1, "01.01.2014")

    imported_data_without_title_for_page_2 = remove_the_column_titles(imported_data, 1)
    import_in_db_debts(imported_data_without_title_for_page_2, "01.01.2015")

    imported_data_without_title_for_page_3 = remove_the_column_titles(imported_data, 2)
    import_in_db_type_of_debts(imported_data_without_title_for_page_3)
  end

  def self.import_data_from_file_currency(location)
    clear_type_of_currency_table
    imported_data = SimpleXlsxReader.open(location)
    imported_data_without_title = remove_the_column_titles(imported_data, 0)
    import_in_db_type_of_currency(imported_data_without_title)
  end

  def self.remove_the_column_titles(imported_data, number_page)
    imported_data.sheets[number_page].rows - imported_data.sheets[number_page].rows.delete_at(0) # Приводим импортированный массив в нужный вид, убираем название солбцов
  end


  def self.import_in_db_debts(imported_data_without_title, date)
    imported_data_without_title.each do |value| #пробегаемся по массиву без столбцов и создаем новые объекты класса Debt
      Debt.create(planid:value[0], code_currency:value[1], quantity:value[2], date: date)
    end
  end

  def self.import_in_db_type_of_currency(imported_data_without_title)
    imported_data_without_title.each do |value| #пробегаемся по массиву без столбцов и создаем новые объекты класса Debt
      TypeOfCurrency.create(code:value[0], type:value[1])
    end
  end

  def self.import_in_db_type_of_debts(imported_data_without_title)
    imported_data_without_title.each do |value| #пробегаемся по массиву без столбцов и создаем новые объекты класса Debt
      TypeOfDebt.create(planid:value[0], type:value[1])
    end
  end

  def self.clear_debet_table
    Debt.delete_all
  end

  def self.clear_type_of_currency_table
    TypeOfCurrency.delete_all
  end

  def self.clear_type_of_debts
    TypeOfDebt.delete_all
  end

end
