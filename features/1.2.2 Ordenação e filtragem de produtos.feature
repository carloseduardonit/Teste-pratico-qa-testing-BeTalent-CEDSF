Feature: Ordenação e filtragem de produtos
  Como um usuário do sistema
  Quero ordenar e filtrar os produtos
  Para facilitar a busca pelo item desejado

  Scenario: Ordenar produtos por preço ascendente
    Given o usuário está na página de listagem de produtos
    When ele seleciona a opção "Preço: menor para maior"
    Then os produtos devem ser exibidos em ordem crescente de preço

  Scenario: Ordenar produtos por preço descendente
    Given o usuário está na página de listagem de produtos
    When ele seleciona a opção "Preço: maior para menor"
    Then os produtos devem ser exibidos em ordem decrescente de preço

  Scenario: Filtrar produtos por categoria
    Given o usuário está na página de listagem de produtos
    And há produtos de diferentes categorias disponíveis
    When ele seleciona a categoria "Eletrônicos"
    Then somente os produtos da categoria "Eletrônicos" devem ser exibidos

  Scenario: Filtrar produtos por faixa de preço
    Given o usuário está na página de listagem de produtos
    And há produtos com preços variados disponíveis
    When ele define o filtro de preço entre "R$ 50,00" e "R$ 100,00"
    Then somente os produtos com preços dentro dessa faixa devem ser exibidos
