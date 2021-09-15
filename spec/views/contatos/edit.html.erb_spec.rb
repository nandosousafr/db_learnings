require 'rails_helper'

RSpec.describe "contatos/edit", type: :view do
  before(:each) do
    @contato = assign(:contato, Contato.create!(
      name: "MyString",
      phone: "MyString",
      email: "MyString"
    ))
  end

  it "renders the edit contato form" do
    render

    assert_select "form[action=?][method=?]", contato_path(@contato), "post" do

      assert_select "input[name=?]", "contato[name]"

      assert_select "input[name=?]", "contato[phone]"

      assert_select "input[name=?]", "contato[email]"
    end
  end
end
