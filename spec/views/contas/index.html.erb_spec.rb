require 'spec_helper'

describe "/contas/index.html.erb" do
  include ContasHelper

  before(:each) do
    assigns[:contas] = [
      stub_model(Conta,
        :nome => "value for nome"
      ),
      stub_model(Conta,
        :nome => "value for nome"
      )
    ]
  end

  it "renders a list of contas" do
    render
    response.should have_tag("tr>td", "value for nome".to_s, 2)
  end
end
