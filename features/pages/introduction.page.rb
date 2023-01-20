class IntroductionPage < SitePrism::Page

    set_url ''
    element :enterButton, :xpath, "/html/body/div/div/div[2]"


    def acessar
        enterButton.click
    end

    def introductionSuccesful
        expect(enterButton.text).to eql "Entrar"
    end
end