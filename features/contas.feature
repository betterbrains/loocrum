Funcionalidade: Contas financeiras
	Para poder acompanhar meus saldos financeiros
	preciso cadastrar vários tipos de contas

	Cenario: Cadastro de contas
		Dado que estou na tela de contas
		E clico no link "New Conta"
		E preencho o formulario
		Entao devo ver a nova conta na lista de contas

	Cenario: Alterar contas
		Dado que tenho a conta "telefone-fixo"
		E que estou na tela de contas
		E clico no link "Edit"
		E I fill in "nome" with "celular"
		E pressiono "Update"
		Entao devo ver "celular"
		E não devo ver "telefone-fixo"

