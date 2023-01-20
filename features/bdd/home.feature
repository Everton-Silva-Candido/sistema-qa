#language: pt

Funcionalidade: Ferramentas da Home Page do Sistema de Testes da Tinnova
Candidato como usuário
Quer acessar as ferramentas da home page do sistema
Para executar ações dentro mesmo

Contexto: 
    Dado que o usuario esteja na home page do sistema

@home_adicionar
Cenario: Acessar Pagina de Cadastro
Quando o usuario clicar no botao Adicionar
Entao o sistema deve redirecionar para a tela de cadastros

@home_sair
Cenario: Sair do Sistema
Quando o usuario clicar no botao Sair
Entao o sistema deve redirecionar para a tela de introducao

@home_visualizar
Cenario: Visualizar Usuario
Quando o usuario clicar no botao com icone de lupa de um usuario
Entao o sistema deve redirecionar o usuario para a tela de visualizacao

@home_editar
Cenario: Editar Usuario
Quando o usuario clicar no botao com icone de lapis de um usuario
Entao o sistema deve redirecionar o usuario para a tela de edicao

@home_deletar_sim
Cenario: Deletar Usuario
Quando o usuario clicar no botao com icone de lixeira de um usuario
Entao o sistema deve abrir uma janela de confirmacao para o usuario confirmar

@home_deletar_nao
Cenario: Cancelar a Delecao de Usuario
Quando o usuario clicar no botao com icone de lixeira de um usuario
Entao o sistema deve abrir uma janela de confirmacao para o usuario recusar