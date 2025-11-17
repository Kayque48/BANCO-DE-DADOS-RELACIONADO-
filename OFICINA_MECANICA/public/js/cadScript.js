// Espera o DOM carregar antes de rodar o script
document.addEventListener('DOMContentLoaded', () => {

    // Função para animação no foco dos campos
    const inputs = document.querySelectorAll('input');
    inputs.forEach(input => {
        input.addEventListener('focus', () => {
            input.style.transition = "box-shadow 0.3s ease, transform 0.3s ease";
            input.style.transform = "scale(1.05)"; // aumenta levemente o tamanho
            input.style.boxShadow = "0 0 8px rgba(76, 29, 149, 0.5)"; // sombra roxa
        });

        input.addEventListener('blur', () => {
            input.style.transform = "scale(1)"; // volta ao tamanho normal
            input.style.boxShadow = "none"; // remove a sombra
        });
    });

    // Função de validação e animação de feedback
    const form = document.getElementById('form-cadastro');
    const feedback = document.getElementById('form-feedback');

    form.addEventListener('submit', (event) => {
        event.preventDefault(); // Impede o envio do formulário para testar o feedback

        let isValid = true;
        // Validação simples (verificando se todos os campos estão preenchidos)
        form.querySelectorAll('input').forEach(input => {
            if (!input.value.trim()) {
                isValid = false;
                input.style.borderColor = "#e53e3e"; // Borda vermelha para erro
            } else {
                input.style.borderColor = "#e1e1e1"; // Borda normal
            }
        });

        // Mostrar feedback dependendo da validade
        if (isValid) {
            feedback.textContent = "Cliente cadastrado com sucesso!";
            feedback.classList.remove('error');
            feedback.classList.add('success');
        } else {
            feedback.textContent = "Por favor, preencha todos os campos.";
            feedback.classList.remove('success');
            feedback.classList.add('error');
        }

        // Exibir feedback com animação
        feedback.classList.remove('hidden');
        setTimeout(() => {
            feedback.style.opacity = 1;
        }, 10);

        // Esconder o feedback após 5 segundos
        setTimeout(() => {
            feedback.style.opacity = 0;
            setTimeout(() => {
                feedback.classList.add('hidden');
            }, 500);
        }, 5000);
    });
});
