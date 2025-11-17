// Função para animação de fade-in
document.addEventListener('DOMContentLoaded', () => {

    // Animação para o título
    const title = document.querySelector('h1');
    setTimeout(() => {
        title.style.opacity = 1;
        title.style.transform = 'translateY(0)';
    }, 100);

    // Animação para o conteúdo
    const content = document.querySelector('.content');
    setTimeout(() => {
        content.style.opacity = 1;
        content.style.transform = 'translateY(0)';
    }, 300);

    // Efeito de hover nos botões
    const buttons = document.querySelectorAll('.button');
    buttons.forEach(button => {
        button.addEventListener('mouseover', () => {
            button.style.transform = 'scale(1.05)';
        });
        button.addEventListener('mouseout', () => {
            button.style.transform = 'scale(1)';
        });
    });
});
