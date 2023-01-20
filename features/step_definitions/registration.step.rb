Dado('que o usuario esteja na tela de cadastro do sistema') do
    visit''
    sleep 5
    @intro = IntroductionPage.new  
    @intro.acessar
    sleep 5
    @home = HomePage.new
    @home.adicionar
    sleep 5
    @registration = RegistrationPage.new
end
    
Quando('o mesmo fornecer credenciais validas e clicar no botao Guardar') do
    @registration.registrarValido(CREDENTIAL[:user][:nome],CREDENTIAL[:user][:telefone],CREDENTIAL[:user][:email],CREDENTIAL[:user][:cpf])
    sleep 5
    @registration.guardar
    sleep 5
end

Entao('o sistema deve salvar as informacoes e redirecionar o usuario para a tela de home') do
    @home.checkLoginSuccesful
end

Quando('o mesmo nao fornecer todas as credenciais e clicar no botao Guardar') do
    @registration.registrarIncompleto(CREDENTIAL[:user][:nome],CREDENTIAL[:user][:telefone],CREDENTIAL[:user][:email])
    sleep 5
    @registration.guardar
    sleep 5
end
    
Entao('o sistema deve informar ao usuario que o registro esta com informacoes pendentes') do
    @registration.confirmar
    sleep 5
    @registration.registrationSuccesful
end

Quando('o mesmo fornecer credenciais invalidas e clicar no botao Guardar') do
    @registration.registrarInvalido(CREDENTIAL[:user][:nome],CREDENTIAL[:user][:telefone],CREDENTIAL[:user][:email])
    sleep 5
    @registration.guardar
    sleep 5
end
    
Entao('o sistema deve informar ao usuario que o registro esta incorreto') do
    @registration.confirmar
    sleep 5
    @registration.registrationSuccesful
end  