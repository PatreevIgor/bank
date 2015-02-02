module CurrencyConversions
  def currency_conversion_total_first_year
    @currency_conversion.to_i * total_first_year.to_i
  end
  def currency_conversion_total_second_year
    @currency_conversion.to_i * total_second_year.to_i
  end
  def currency_conversion_total_change_debts
    @currency_conversion.to_i * total_change_debts.to_i
  end
end
