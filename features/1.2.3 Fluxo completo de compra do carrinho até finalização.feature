Feature: Fluxo completo de compra
  Como um usuário do sistema
  Quero adicionar produtos ao carrinho e finalizar a compra
  Para concluir a minha compra com sucesso

  Scenario: Adicionar produto ao carrinho e finalizar a compra
    Given o usuário está na página de listagem de produtos
    And o usuário visualiza produtos disponíveis para compra
    When ele adiciona o produto "Produto A" ao carrinho
    Then o produto "Produto A" deve ser adicionado ao carrinho

  Scenario: Verificar itens no carrinho antes de finalizar a compra
    Given o usuário adicionou o "Produto A" ao carrinho
    When ele acessa o carrinho de compras
    Then o carrinho deve exibir o produto "Produto A"
    And o valor total do carrinho deve refletir o preço do "Produto A"

  Scenario: Remover produto do carrinho
    Given o usuário tem o produto "Produto A" no carrinho
    When ele remove o "Produto A" do carrinho
    Then o carrinho não deve exibir o produto "Produto A"
    And o valor total do carrinho deve ser atualizado

  Scenario: Finalizar compra com sucesso
    Given o usuário tem produtos no carrinho
    When ele clica em "Finalizar compra"
    And ele insere as informações de pagamento e endereço de entrega
    Then a compra deve ser finalizada com sucesso
    And o usuário deve ser redirecionado para a página de confirmação de pedido

  Scenario: Verificar erro ao tentar finalizar compra sem itens no carrinho
    Given o usuário não tem produtos no carrinho
    When ele tenta finalizar a compra
    Then ele deve ser informado que o carrinho está vazio
    And a opção de finalizar a compra deve ser desabilitada

  Scenario: Aplicar código de desconto no carrinho
    Given o usuário tem o "Produto A" no carrinho
    And ele possui um código de desconto válido
    When ele aplica o código de desconto no carrinho
    Then o valor total do carrinho deve ser reduzido de acordo com o desconto
    And o usuário deve ver o valor do desconto aplicado

  Scenario: Confirmar detalhes do pedido após a finalização
    Given o usuário finalizou a compra
    When ele visualiza a página de confirmação de pedido
    Then ele deve ver os detalhes do pedido, incluindo os produtos comprados, o valor total e a estimativa de entrega
