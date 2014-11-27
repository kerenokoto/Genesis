json.array!(@expenses) do |expense|
  json.extract! expense, :id, :date, :title, :salary, :maintenance, :utility_bills, :total_expenses
  json.url expense_url(expense, format: :json)
end
