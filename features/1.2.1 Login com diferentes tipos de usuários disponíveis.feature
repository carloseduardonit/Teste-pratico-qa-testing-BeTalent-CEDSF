Feature: Login de usuários no sistema
  Como um usuário do sistema
  Quero acessar o sistema com diferentes credenciais
  Para validar os comportamentos específicos de cada tipo de usuário

  Scenario: Login bem-sucedido com usuário padrão
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "standard_user" e a senha "secret_sauce"
    Then ele deve acessar o sistema com sucesso

  Scenario: Login bloqueado com usuário locked_out_user
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "locked_out_user" e a senha "secret_sauce"
    Then ele deve ver a mensagem "Epic sadface: Sorry, this user has been locked out."

  Scenario: Problemas ao acessar o sistema com usuário problem_user
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "problem_user" e a senha "secret_sauce"
    Then o sistema deve apresentar erros de comportamento no acesso

  Scenario: Performance lenta com usuário performance_glitch_user
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "performance_glitch_user" e a senha "secret_sauce"
    Then o sistema deve demorar para responder

  Scenario: Erros ao acessar com usuário error_user
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "error_user" e a senha "secret_sauce"
    Then o sistema deve acessar com erros no comportamento

  Scenario: Validar impacto visual com usuário visual_user
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "visual_user" e a senha "secret_sauce"
    Then o sistema deve exibir comportamentos ou alterações visuais incomuns
