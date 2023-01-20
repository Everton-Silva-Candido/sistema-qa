Dado('que o usuario esteja na home page do sistema') do
    visit''
    sleep 5
    @intro = IntroductionPage.new  
    @intro.acessar
    sleep 5
    @home = HomePage.new
end
  
Quando('o usuario clicar no botao Adicionar') do
  @home.adicionar
  sleep 5
end
  
Entao('o sistema deve redirecionar para a tela de cadastros') do
  @registration = RegistrationPage.new
  @registration.registrationSuccesful
end
  
Quando('o usuario clicar no botao Sair') do
  @home.sair
  sleep 5
end
  
Entao('o sistema deve redirecionar para a tela de introducao') do
  @intro.introductionSuccesful
end
  
Quando('o usuario clicar no botao com icone de lupa de um usuario') do
  @home.visualizar
  sleep 5
end

Entao('o sistema deve redirecionar o usuario para a tela de visualizacao') do
  @view = ViewPage.new
  @view.viewSuccesful
end
  
Quando('o usuario clicar no botao com icone de lapis de um usuario') do
  @home.editar
  sleep 5
end

Entao('o sistema deve redirecionar o usuario para a tela de edicao') do
  @edit = EditPage.new
  @edit.editSuccesful
end
  
Quando('o usuario clicar no botao com icone de lixeira de um usuario') do
  @home.excluir
  sleep 5
end
  
Entao('o sistema deve abrir uma janela de confirmacao para o usuario recusar') do
  @home.excluirNao
  sleep 5
  @home.checkLoginSuccesful
end

Entao('o sistema deve abrir uma janela de confirmacao para o usuario confirmar') do
  @home.excluirSim
  sleep 5
  @intro.introductionSuccesful
end