class ViewPage < SitePrism::Page

    element :backButton, :xpath, "/html/body/div/div/div[6]"


    def voltar
        backButton.click
    end

    def viewSuccesful
        expect(backButton.text).to eql "VOLTAR"
    end
end