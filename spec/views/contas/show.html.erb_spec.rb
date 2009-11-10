require 'spec_helper'

describe "/contas/show.html.erb" do
  include ContasHelper
  before(:each) do
    assigns[:conta] = @conta = stub_model(Conta,
      :nome => "value for nome"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ nome/)
  end
end
