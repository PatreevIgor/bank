module PrincipalAndInterestDebts
  def principal_debt_first_year
    amount_of_term_debt_first_year + amount_of_overdue_debt_first_year + amount_of_prolonged_debt_first_year
  end

  def principal_debt_second_year
    amount_of_term_debt_second_year + amount_of_overdue_debt_second_year + amount_of_prolonged_debt_second_year
  end

  def interest_first_year
    amount_of_urgent_interest_first_year + amount_of_overdue_interest_first_year
  end

  def interest_second_year
   amount_of_urgent_interest_second_year + amount_of_overdue_interest_second_year
  end
end
