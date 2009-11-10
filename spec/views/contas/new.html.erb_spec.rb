require 'spec_helper'

describe "/contas/new.html.erb" do
  include ContasHelper

  before(:each) do
    assigns[:conta] = stub_model(Conta,
      :new_record? => true,
      :nome => "value for nome"
    )
  end

  it "renders new conta form" do
    render

    response.should have_tag("form[action=?][method=post]", contas_path) do
      with_tag("input#conta_nome[name=?]", "conta[nome]")
    end
  end
end
