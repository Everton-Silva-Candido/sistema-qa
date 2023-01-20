class RegistrationPage < SitePrism::Page

    element :nameField, :xpath, "/html/body/div/div/div[2]/input"
    element :emailField, :xpath, "/html/body/div/div/div[3]/input"
    element :cpfField, :xpath, "/html/body/div/div/div[4]/input"
    element :telefoneField, :xpath, "/html/body/div/div/div[5]/input"
    element :saveButton, :xpath, "/html/body/div/div/div[6]"
    element :confirmButton, :xpath, "/html/body/div[2]/div/div[4]/div/button"

    def registrarValido(nome,telefone,email,cpf)
        nameField.set (nome)
        emailField.set (email)
        telefoneField.set (telefone)
        cpfField.set (cpf)
    end

    def registrarInvalido(nome,telefone,email)
        nameField.set (nome)
        emailField.set (email)
        telefoneField.set (telefone)
        cpfField.set "rqwrqwerweewqr"
    end

    def registrarIncompleto(nome,telefone,email)
        nameField.set (nome)
        emailField.set (email)
        telefoneField.set (telefone)
    end

    def guardar
        saveButton.click
    end

    def confirmar
        confirmButton.click
    end

    def registrationSuccesful
        expect(saveButton.text).to eql "GUARDAR"
    end
end