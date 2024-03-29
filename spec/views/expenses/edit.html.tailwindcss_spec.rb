# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  let(:expense) {
    Expense.create!(
      name: "MyString",
      amount: 1.5,
      description: "MyText"
    )
  }

  before(:each) do
    assign(:expense, expense)
  end

  it "renders the edit expense form" do
    render

    assert_select "form[action=?][method=?]", expense_path(expense), "post" do

      assert_select "input[name=?]", "expense[name]"

      assert_select "input[name=?]", "expense[amount]"

      assert_select "textarea[name=?]", "expense[description]"
    end
  end
end
