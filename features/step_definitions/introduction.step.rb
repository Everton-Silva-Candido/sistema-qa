Dado('que o usuario queira acessar o sistema') do
  visit''
  sleep 5
end
  
Quando('o mesmo clicar no botão Entrar') do
  @intro = IntroductionPage.new  
  @intro.acessar
  sleep 5
end
  
Entao('deve acessar a página de cadastros do sistema com sucesso') do
  @home = HomePage.new
  @home.checkLoginSuccesful
end
