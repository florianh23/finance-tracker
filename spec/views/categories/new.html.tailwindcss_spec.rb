# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      name: "MyString",
      color: "MyString"
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input[name=?]", "category[name]"

      assert_select "input[name=?]", "category[color]"
    end
  end
end
