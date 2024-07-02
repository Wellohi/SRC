// pegandos os 2 inputs 
let inputEmail = document.getElementById('inputemail');
let inputSenha = document.getElementById('inputsenha');

let errorShownEmail = false; // variável para rastrear se a mensagem de erro já foi criada
let errorShownSenha = false;

// adiciona ouvinte de evento ao campo de entrada
inputEmail.addEventListener('blur', () => {
    // verifica se o campo está vazio
    if (inputEmail.value === "") {
        // verifica se a mensagem de erro já foi criada
        if (!errorShownEmail) {
            // adiciona a classe :invalid e estilo de borda vermelha
            inputEmail.classList.add(":invalid");
            inputEmail.style.borderBottom = "1px solid red";
            // cria a mensagem de erro
            let errorMessage = document.createElement("small");
            // errorMessage.textContent = "Campo vazio";
            errorMessage.classList.add("error");
            inputEmail.insertAdjacentElement("afterend", errorMessage);
            errorShownEmail = true;
        }
    } else {
        // remove a classe :invalid e o estilo de borda vermelha
        inputEmail.classList.remove(":invalid");
        inputEmail.style.borderBottom = "";
        // remove o elemento small, se ele já existir
        let errorMessage = inputEmail.nextElementSibling;
        if (errorMessage !== null && errorMessage.tagName === "SMALL") {
            errorMessage.remove();
            errorShown = false;     
        }
    }
});

inputSenha.addEventListener('blur', () => {
    // verifica se o campo está vazio
    if (inputSenha.value === "") {
        // verifica se a mensagem de erro já foi criada
        if (!errorShownSenha) {
            // adiciona a classe :invalid e estilo de borda vermelha
            inputSenha.classList.add(":invalid");
            inputSenha.style.borderBottom = "1px solid red";
            // cria a mensagem de erro
            let errorMessage = document.createElement("small");
            // errorMessage.textContent = "Campo vazio";
            errorMessage.classList.add("error");
            inputSenha.insertAdjacentElement("afterend", errorMessage);
            errorShownSenha = true;
        }
    } else {
        // remove a classe :invalid e o estilo de borda vermelha
        inputSenha.classList.remove(":invalid");
        inputSenha.style.borderBottom = "";
        // remove o elemento small, se ele já existir
        let errorMessage = inputSenha.nextElementSibling;
        if (errorMessage !== null && errorMessage.tagName === "SMALL") {
            errorMessage.remove();
            errorShownSenha = false;
        }
    }
});