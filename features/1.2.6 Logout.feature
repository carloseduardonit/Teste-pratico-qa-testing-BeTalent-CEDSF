# author: @Carlos Eduardo
# github: https://github.com/carloseduardonit/Teste-pratico-qa-testing-BeTalent-CEDSF

Feature: Logout pelo menu
  Como um usuário autenticado
  Quero realizar logout através do menu
  Para encerrar minha sessão com segurança

  Scenario: Logout com sucesso pelo menu
    Given o usuário está logado no sistema
    And o menu está visível
    When ele clica no menu
    And seleciona a opção "Logout"
    Then ele deve ser redirecionado para a página de login
    And sua sessão deve ser encerrada

  Scenario: Menu não visível para usuários não autenticados
    Given o usuário não está logado no sistema
    When ele tenta acessar o menu
    Then o menu de logout não deve ser exibido

  Scenario: Verificar existência da opção de logout no menu
    Given o usuário está logado no sistema
    When ele clica no menu
    Then a opção "Logout" deve estar disponível
