Funcionalidade: Contas financeiras
	Para poder acompanhar meus saldos financeiros
	preciso cadastrar vários tipos de contas

  Cenario: Listar contas
		Dado que tenho a conta:
          |nome|
          |telefone-fixo|
          |celular|
		E que estou na tela de contas
		Entao devo ver "telefone-fixo"
        E devo ver "celular"

	Cenario: Cadastro de contas
		Dado que estou na tela de contas
		E clico no link "New Conta"
		E preencho o formulario
		Entao devo ver a nova conta na lista de contas

	Cenario: Alterar contas
		Dado que tenho a conta:
          |nome|
          |telefone-fixo|
		E que estou na tela de contas
		E clico no link "Edit"
		E preencho "nome" com "celular"
		E pressiono "Update"
		Entao devo ver "celular"
		E não devo ver "telefone-fixo"

     Cenario: Excluir contas
		Dado que tenho a conta:
          |nome|
          |telefone-fixo|
		E que estou na tela de contas
		E clico no link "Destroy"
		Entao não devo ver "telefone-fixo"