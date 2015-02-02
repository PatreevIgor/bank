module AmountDebts
  def amount_of_term_debt_first_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Срочный долг'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2014,01,01)
    )
  end

  def amount_of_overdue_debt_first_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Просроченный долг'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2014,01,01)
    )
  end

  def amount_of_prolonged_debt_first_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Пролонгированный долг'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2014,01,01)
    )
  end

  def amount_of_urgent_interest_first_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Срочные проценты'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2014,01,01)
    )
  end

  def amount_of_overdue_interest_first_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Просроченные проценты'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2014,01,01)
    )
  end

  def amount_of_term_debt_second_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Срочный долг'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2015,01,01)
    )
  end

  def amount_of_overdue_debt_second_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Просроченный долг'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2015,01,01)
    )
  end

  def amount_of_prolonged_debt_second_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Пролонгированный долг'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2015,01,01)
    )
  end

  def amount_of_urgent_interest_second_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Срочные проценты'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2015,01,01)
    )
  end

  def amount_of_overdue_interest_second_year
    Counting.totaling_code_debt_currency_code_and_time(
      Counting.all_values_of_any_debt('Просроченные проценты'),
      Counting.value_of_any_cerrency(@currency),
      Date.new(2015,01,01)
    )
  end
end
