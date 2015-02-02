class Counting

  def self.totaling_code_debt_currency_code_and_time(code_debt, code_currency, time)
    summa = 0
    Debt.where(planid:code_debt, code_currency:code_currency, date: time).each do |value|
      summa += value.quantity
    end
    summa
  end

  def self.all_values_of_any_debt(type_debt)
    all_type = []
    TypeOfDebt.where(type: type_debt).each do |debt|
      all_type<<debt.planid
    end
    all_type
  end

  def self.value_of_any_cerrency(type_currency)
    return_currency = nil
    TypeOfCurrency.where(type: type_currency).each do |currency|
      return_currency = currency.code
    end
    return_currency
  end

end
