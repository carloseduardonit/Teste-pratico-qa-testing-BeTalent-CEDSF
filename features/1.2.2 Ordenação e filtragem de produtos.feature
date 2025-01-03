# author: @Carlos Eduardo
# github: https://github.com/carloseduardonit/Teste-pratico-qa-testing-BeTalent-CEDSF

Feature: Ordenação e filtragem de produtos
  Como um usuário do sistema
  Quero ordenar e filtrar os produtos
  Para facilitar a busca pelo item desejado

# 1.2.2.1 Ordenar produtos por preço ascendente
  Scenario: Ordenar produtos por preço ascendente
    Given o usuário está na página de listagem de produtos
    When ele seleciona a opção "Preço: menor para maior"
    Then os produtos devem ser exibidos em ordem crescente de preço

# 1.2.2.2 Ordenar produtos por preço descendente
  Scenario: Ordenar produtos por preço descendente
    Given o usuário está na página de listagem de produtos
    When ele seleciona a opção "Preço: maior para menor"
    Then os produtos devem ser exibidos em ordem decrescente de preço

# 1.2.2.3 Ordenar produtos por nome de A a Z
    Scenario: Ordenar produtos por nome de A a Z
    Given o usuário está na página de listagem de produtos
    And há produtos com diferentes nomes listados
    When ele seleciona a opção "Nome: A a Z"
    Then os produtos devem ser exibidos em ordem alfabética crescente
    And o primeiro produto deve ter o nome que começa com a menor letra alfabética disponível

# 1.2.2.4 Ordenar produtos por nome de Z a A
  Scenario: Ordenar produtos por nome de Z a A
    Given o usuário está na página de listagem de produtos
    And há produtos com diferentes nomes listados
    When ele seleciona a opção "Nome: Z a A"
    Then os produtos devem ser exibidos em ordem alfabética decrescente
    And o primeiro produto deve ter o nome que começa com a maior letra alfabética disponível
