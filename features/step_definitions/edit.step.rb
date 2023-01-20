Dado('que o usuario esteja na tela de edicao do sistema') do
  visit''
  sleep 5
  @intro = IntroductionPage.new  
  @intro.acessar
  sleep 5
  @home = HomePage.new
  @home.editar
  sleep 5
  @edit = EditPage.new
end
  
Quando('o mesmo editar um registro repassando credenciais validas e clicar no botao Atualizar') do
  @edit.editarValido(CREDENTIAL[:user_dois][:nome],CREDENTIAL[:user_dois][:telefone],CREDENTIAL[:user_dois][:email],CREDENTIAL[:user_dois][:cpf])
  sleep 5
  @edit.atualizar
  sleep 5
end

Entao('o sistema deve salvar a informação e redirecionar para a tela de home') do
  @home.checkLoginSuccesful
end

Quando('o mesmo editar um registro repassando credenciais invalidas e clicar no botao Atualizar') do
  @edit.editarInvalido(CREDENTIAL[:user_dois][:nome],CREDENTIAL[:user_dois][:telefone],CREDENTIAL[:user_dois][:email])
  sleep 5
  @edit.atualizar
  sleep 5
end
  
Entao('o sistema deve informar ao usuario que o registro esta invalido') do
  @edit.confirmar
  sleep 5
  @edit.editSuccesful
end

Quando('o mesmo nao fornecer todas as credenciais e clicar no botao Atualizar') do
  @edit.editarIncompleto(CREDENTIAL[:user_dois][:nome],CREDENTIAL[:user_dois][:telefone],CREDENTIAL[:user_dois][:email])
  sleep 5
  @edit.atualizar
  sleep 5
end
  
Entao('o sistema deve informar ao usuario que o registro esta incompleto') do
  @edit.confirmar
  sleep 5
  @edit.editSuccesful
end