module TotalDebs
  def total_first_year
    principal_debt_first_year + interest_first_year
  end
  def total_second_year
    principal_debt_second_year + interest_second_year
  end
  def total_change_debts
    change_principal_debt + change_interest
  end
  def total_changes_in_percent
    changes_in_percent_principal_debt + changes_in_percent_interest
  end
end
