#language: pt

Funcionalidade: Cadastro de Usuários no Sistema Tinnova QA
Candidato como usuário
Quer cadastrar um novo registro de teste no sistema
Para utilizá-lo nas atividades

Contexto: 
    Dado que o usuario esteja na tela de cadastro do sistema

@registrar_usuario_valido
Cenario: Cadastrar Registro com Credenciais Validas
Quando o mesmo fornecer credenciais validas e clicar no botao Guardar
Entao o sistema deve salvar as informacoes e redirecionar o usuario para a tela de home

@registrar_usuario_invalido
Cenario: Cadastrar Registro com Credenciais Invalidas
Quando o mesmo fornecer credenciais invalidas e clicar no botao Guardar
Entao o sistema deve informar ao usuario que o registro esta incorreto

@registrar_usuario_incompleto
Cenario: Cadastrar Registro com Credenciais Incompletas
Quando o mesmo nao fornecer todas as credenciais e clicar no botao Guardar
Entao o sistema deve informar ao usuario que o registro esta com informacoes pendentes