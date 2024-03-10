# frozen_string_literal: true

json.extract! expense, :id, :name, :date, :amount, :description, :created_at, :updated_at
json.url expense_url(expense, format: :json)
