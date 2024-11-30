Feature: Remoção de itens do carrinho
  Como um usuário do sistema
  Quero remover itens do meu carrinho
  Para atualizar a lista de produtos antes de finalizar a compra

  Scenario: Remover um único item do carrinho
    Given o usuário tem o produto "Produto A" no carrinho
    When ele clica na opção de remover "Produto A"
    Then o produto "Produto A" deve ser removido do carrinho
    And o carrinho deve ser atualizado para refletir a remoção

  Scenario: Remover múltiplos itens do carrinho
    Given o usuário tem os produtos "Produto A" e "Produto B" no carrinho
    When ele remove o "Produto A" e o "Produto B"
    Then o carrinho deve ser vazio
    And o valor total do carrinho deve ser zero

  Scenario: Verificar atualização do valor após remoção
    Given o usuário tem os produtos "Produto A" e "Produto B" no carrinho
    And o valor total do carrinho é de R$ 100,00
    When ele remove o "Produto A" do carrinho
    Then o carrinho deve exibir apenas o "Produto B"
    And o valor total do carrinho deve ser ajustado para refletir o preço do "Produto B"

  Scenario: Verificar se o carrinho está vazio após remoção de todos os itens
    Given o usuário tem produtos no carrinho
    When ele remove todos os itens do carrinho
    Then o carrinho deve estar vazio
    And a mensagem "Seu carrinho está vazio" deve ser exibida

  Scenario: Cancelar remoção de item do carrinho
    Given o usuário tem o produto "Produto A" no carrinho
    When ele clica na opção de remover "Produto A"
    And escolhe cancelar a remoção
    Then o produto "Produto A" deve permanecer no carrinho
    And o valor total do carrinho não deve ser alterado
