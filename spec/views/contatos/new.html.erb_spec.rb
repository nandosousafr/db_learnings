require 'rails_helper'

RSpec.describe "contatos/new", type: :view do
  before(:each) do
    assign(:contato, Contato.new(
      name: "MyString",
      phone: "MyString",
      email: "MyString"
    ))
  end

  it "renders new contato form" do
    render

    assert_select "form[action=?][method=?]", contatos_path, "post" do

      assert_select "input[name=?]", "contato[name]"

      assert_select "input[name=?]", "contato[phone]"

      assert_select "input[name=?]", "contato[email]"
    end
  end
end
