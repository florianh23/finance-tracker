# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "expenses/new", type: :view do
  before(:each) do
    assign(:expense, Expense.new(
      name: "MyString",
      amount: 1.5,
      description: "MyText"
    ))
  end

  it "renders new expense form" do
    render

    assert_select "form[action=?][method=?]", expenses_path, "post" do

      assert_select "input[name=?]", "expense[name]"

      assert_select "input[name=?]", "expense[amount]"

      assert_select "textarea[name=?]", "expense[description]"
    end
  end
end
