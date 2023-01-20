Dado('que o usuario esteja na tela de visualizacao') do
    visit''
    sleep 5
    @intro = IntroductionPage.new  
    @intro.acessar
    sleep 5
    @home = HomePage.new
    @home.visualizar
end
    
Quando('o mesmo clicar no botão Voltar') do
    @view = ViewPage.new  
    sleep 5
    @view.voltar
    sleep 5
    
end
    
Entao('o sistema deve redirecionar o usuario para a tela de home') do
  @home.checkLoginSuccesful
end