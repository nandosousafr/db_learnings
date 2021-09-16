require 'rails_helper'

RSpec.describe "contatos/index", type: :view do
  before(:each) do
    assign(:contatos, [
      Contato.create!(
        name: "Name",
        phone: "Phone",
        email: "Email"
      ),
      Contato.create!(
        name: "Name",
        phone: "Phone",
        email: "Email"
      )
    ])
  end

  it "renders a list of contatos" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
  end
end
