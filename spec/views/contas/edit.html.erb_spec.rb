require 'spec_helper'

describe "/contas/edit.html.erb" do
  include ContasHelper

  before(:each) do
    assigns[:conta] = @conta = stub_model(Conta,
      :new_record? => false,
      :nome => "value for nome"
    )
  end

  it "renders the edit conta form" do
    render

    response.should have_tag("form[action=#{conta_path(@conta)}][method=post]") do
      with_tag('input#conta_nome[name=?]', "conta[nome]")
    end
  end
end
