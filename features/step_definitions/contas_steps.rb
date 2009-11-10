E /^preencho o formulario$/ do
  fill_in "conta[nome]", :with => "Conta Bancário do João"
  click_button("Create")
end

Entao /^devo ver a nova conta na lista de contas$/ do
  response.should contain("Conta Bancário do João")
end

Dado /^que tenho a conta "([^\"]*)"$/ do |name|
  Conta.create(:nome => name)
end

