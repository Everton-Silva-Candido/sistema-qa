class EditPage < SitePrism::Page

    element :nameField, :xpath, "/html/body/div/div/div[2]/input"
    element :emailField, :xpath, "/html/body/div/div/div[3]/input"
    element :cpfField, :xpath, "/html/body/div/div/div[4]/input"
    element :telefoneField, :xpath, "/html/body/div/div/div[5]/input"
    element :updateButton, :xpath, "/html/body/div/div/div[6]"
    element :confirmButton, :xpath, "/html/body/div[2]/div/div[4]/div/button"

    def editarValido(nome,telefone,email,cpf)
        nameField.set (nome)
        emailField.set (email)
        telefoneField.set (telefone)
        cpfField.set (cpf)
    end

    def editarInvalido(nome,telefone,email)
        nameField.set (nome)
        emailField.set (email)
        telefoneField.set (telefone)
        cpfField.set "rqwrqwerweewqr"
    end

    def editarIncompleto(nome,telefone,email)
        nameField.set (nome)
        emailField.set (email)
        telefoneField.set (telefone)
    end

    def atualizar
        updateButton.click
    end

    def confirmar
        confirmButton.click
    end

    def editSuccesful
        expect(updateButton.text).to eql "ATUALIZAR"
    end
end