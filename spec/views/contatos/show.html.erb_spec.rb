require 'rails_helper'

RSpec.describe "contatos/show", type: :view do
  before(:each) do
    @contato = assign(:contato, Contato.create!(
      name: "Name",
      phone: "Phone",
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
  end
end
