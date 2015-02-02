namespace :import do
  desc "Importing xlsx to local db"
  task :xlsx_to_local_db => :environment do

    imported_data = ImportingStuff.import_data_from_file_debt('/home/patron/Projects/workbook.xlsx')
    imported_data_currency = ImportingStuff.import_data_from_file_currency('/home/patron/Projects/currency.xlsx')

  end
end

