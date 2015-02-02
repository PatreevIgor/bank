module ChangesInPercentDebts
  def changes_in_percent_principal_debt
    principal_debt_second_year*100/(principal_debt_first_year.nonzero? || 1)-100
  end
  def changes_in_percent_term_debt
    amount_of_term_debt_second_year*100/(amount_of_term_debt_first_year.nonzero? || 1)-100
  end
  def changes_in_percent_overdue_debt
    amount_of_overdue_debt_second_year*100/(amount_of_overdue_debt_first_year.nonzero? || 1)-100
  end
  def changes_in_percent_prolonged_debt
    amount_of_prolonged_debt_second_year*100/(amount_of_prolonged_debt_first_year.nonzero? || 1) -100
  end
  def changes_in_percent_interest
    interest_second_year*100/(interest_first_year.nonzero? || 1)-100
  end
  def changes_in_percent_urgent_interest
    amount_of_urgent_interest_second_year*100/(amount_of_urgent_interest_first_year.nonzero? || 1)-100
  end
  def changes_in_percent_overdue_interest
    amount_of_overdue_interest_second_year*100/(amount_of_overdue_interest_first_year.nonzero? || 1)-100
  end
end
