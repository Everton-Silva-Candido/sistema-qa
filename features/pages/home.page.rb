class HomePage < SitePrism::Page

    element :addButton, :xpath, "/html/body/div/div/div[3]"
    element :closeButton, :xpath, "/html/body/div/div/div[4]"
    element :viewButton, :xpath,"/html/body/div/div/div[2]/div[2]/div[1]/div[5]/div[1]"
    element :editButton, :xpath,"/html/body/div/div/div[2]/div[2]/div[3]/div[5]/div[2]"
    element :deleteButton, :xpath,"/html/body/div[1]/div/div[2]/div[2]/div[1]/div[5]/div[3]"
    element :delYesButton, :xpath,"/html/body/div[2]/div/div[3]/div[2]/button"
    element :delNoButton, :xpath,"/html/body/div[2]/div/div[3]/div[1]/button"

    def sair
        closeButton.click
    end

    def adicionar
        addButton.click
    end

    def visualizar
        viewButton.click
    end

    def editar
        editButton.click
    end

    def excluir
        deleteButton.click
    end

    def excluirNao
        delNoButton.click
    end

    def excluirSim
        delYesButton.click
    end

    def checkLoginSuccesful
        expect(addButton.text).to eql "Adicionar"
        expect(closeButton.text).to eql "Sair"
    end
    
end