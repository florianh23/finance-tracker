# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "expenses/show", type: :view do
  before(:each) do
    assign(:expense, Expense.create!(
      name: "Name",
      amount: 2.5,
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
  end
end
