module ConversionTotalUsb
  def conversion_total_usb_first_year
    count_kurs * total_first_year.to_i
  end
  def conversion_total_usb_second_year
    count_kurs * total_second_year.to_i
  end
  def conversion_total_usb_change_debts
    count_kurs * total_change_debts.to_i
  end
end
