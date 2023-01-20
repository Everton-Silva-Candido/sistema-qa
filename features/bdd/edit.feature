#language: pt

Funcionalidade: Editar Cadastro de Usuários no Sistema Tinnova QA
Candidato como usuário
Quer editar um novo registro de teste no sistema
Para atualizar suas informações

Contexto: 
    Dado que o usuario esteja na tela de edicao do sistema

@editar_valido
Cenario: Editar Registro com Credenciais Validas
Quando o mesmo editar um registro repassando credenciais validas e clicar no botao Atualizar
Entao o sistema deve salvar a informação e redirecionar para a tela de home

@editar_invalido
Cenario: Editar Registro com Credenciais Invalidas
Quando o mesmo editar um registro repassando credenciais invalidas e clicar no botao Atualizar
Entao o sistema deve informar ao usuario que o registro esta invalido

@editar_incompleto
Cenario: Editar Registro com Credenciais Incompletas
Quando o mesmo nao fornecer todas as credenciais e clicar no botao Atualizar
Entao o sistema deve informar ao usuario que o registro esta incompleto