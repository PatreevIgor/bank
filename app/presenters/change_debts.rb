module ChangeDebts
  def change_principal_debt
    principal_debt_second_year - principal_debt_first_year
  end
  def change_term_debt
    amount_of_term_debt_second_year - amount_of_term_debt_first_year
  end
  def change_overdue_debt
    amount_of_overdue_debt_second_year - amount_of_overdue_debt_first_year
  end
  def change_prolonged_debt
    amount_of_prolonged_debt_second_year - amount_of_prolonged_debt_first_year
  end
  def change_interest
    interest_second_year - interest_first_year
  end
  def change_urgent_interest
    amount_of_urgent_interest_second_year - amount_of_urgent_interest_first_year
  end
  def change_overdue_interest
    amount_of_overdue_interest_second_year - amount_of_overdue_interest_first_year
  end
end
