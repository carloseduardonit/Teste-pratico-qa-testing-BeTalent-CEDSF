Feature: Navegação entre páginas
  Como um usuário do sistema
  Quero navegar entre as diferentes páginas do site
  Para explorar os produtos e realizar minha compra de forma eficiente

  Scenario: Navegar da página inicial para a listagem de produtos
    Given o usuário está na página inicial
    When ele clica no link "Produtos" no menu
    Then ele deve ser redirecionado para a página de listagem de produtos

  Scenario: Navegar da página de listagem de produtos para a página de detalhes de um produto
    Given o usuário está na página de listagem de produtos
    And o produto "Produto A" está listado
    When ele clica no produto "Produto A"
    Then ele deve ser redirecionado para a página de detalhes do "Produto A"

  Scenario: Navegar de volta da página de detalhes para a página de listagem de produtos
    Given o usuário está na página de detalhes do "Produto A"
    When ele clica no link "Voltar para listagem de produtos"
    Then ele deve ser redirecionado para a página de listagem de produtos

  Scenario: Navegar do carrinho para a finalização da compra
    Given o usuário tem itens no carrinho
    When ele clica na opção "Finalizar compra"
    Then ele deve ser redirecionado para a página de finalização da compra

  Scenario: Navegar para a página de login a partir da página de carrinho
    Given o usuário não está logado
    When ele clica no botão "Login" na página do carrinho
    Then ele deve ser redirecionado para a página de login

  Scenario: Verificar navegação para página de confirmação após finalização da compra
    Given o usuário finalizou a compra com sucesso
    When ele é redirecionado para a página de confirmação de pedido
    Then ele deve ver a mensagem de confirmação e os detalhes do pedido
