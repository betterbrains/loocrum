Dado /^que estou na tela de contas$/ do
  visit "/contas"
end

E /^clico no link "([^\"]*)"$/ do |link|
  click_link (link)
end

E /^preencho o formulario$/ do
  fill_in "conta[nome]", :with => "Conta Bancário do João"
  click_button("Create")
end

Entao /^devo ver a nova conta na lista de contas$/ do
  response.should contain("Conta Bancário do João") 
end
