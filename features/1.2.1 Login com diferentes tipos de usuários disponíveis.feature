Feature: Login de usuários no sistema
  Como um usuário do sistema
  Quero acessar o sistema com diferentes credenciais
  Para validar os comportamentos específicos de cada tipo de usuário

# 1.2.1.1 Login bem-sucedido com usuário padrão
  Scenario: Login bem-sucedido com usuário padrão
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "standard_user" e a senha "secret_sauce"
    Then ele deve acessar o sistema com sucesso

# 1.2.1.2 Login bloqueado com usuário locked_out_user
  Scenario: Login bloqueado com usuário locked_out_user
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "locked_out_user" e a senha "secret_sauce"
    Then ele deve ver a mensagem "Epic sadface: Sorry, this user has been locked out."

# 1.2.1.3 Problemas ao acessar o sistema com usuário problem_user
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

# 1.2.1.7 Validar o não preenchimento campo "Nome Usuario"


  Scenario: Validar o não preenchimento campo "Nome Usuario"
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere apenas a senha "secret_sauce"
    Then ele deve ver a mensagem "Epic sadface: Username is required"


# 1.2.1.8 Validar o não preenchimento campo "Senha"
  Scenario: Validar o não preenchimento campo "Senha"
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "standard_user" 
    Then ele deve ver a mensagem "Epic sadface: PassWord is required"
  

# 1.2.1.9 Validar o não preenchimento campos "Nome Usuario" e "Senha"
  Scenario: Validar o não preenchimento campos "Nome Usuario" e "Senha"
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "" e a senha ""
    Then ele deve ver a mensagem "Epic sadface: PassWord is required"
    
# 1.2.1.10 Validar autenticação do usuario invalido
  Scenario: Validar autenticação do usuario invalido
    Given o usuário está na página de login "https://www.saucedemo.com/"
    When ele insere o nome de usuário "nada" e a senha "pas123"
    Then ele deve ver a mensagem "Epic sadface: Username and password do not match any user in this service"
    