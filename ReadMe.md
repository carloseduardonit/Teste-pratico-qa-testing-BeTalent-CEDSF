# Teste Prático QA Testing 🚧🧪

ID: bb7f0940-aee3-4b6b-a625-a2c58b9d62f7

Bem-vindo(a) ao Teste Prático QA Testing BeTalent!

Você terá de executar e documentar dois tipos de testes:

1. UI Testing
2. API Testing

Os requisitos a serem atendidos estão descritos a seguir para cada caso.

>[!CAUTION]
>
> - Eu não conseguir finalizar no dia 26/11/2024 foi devido:
> - Computador travando
>   - pedir alguns prints no teste de API
> - Dor no estômago
> - Estudo concorrente:
>   - Semana de Prova da faculdade
>   - [Prova de certificação Salesforce](https://www.linkedin.com/feed/update/urn:li:activity:7275676610475798530/)
> - Clique nos titulos abaixo para ver os paragrafos conforme a demostração: :point_down:

<img src="/IMAGEM/demostracao.gif" alt="Demostração de com fazer">

---------------------------------
<details>
  <summary>

## 1. UI TESTING

  </summary>
  A tarefa aqui é testar a plataforma de e-commerce [Sauce Demo](https://www.saucedemo.com) . Suponha que a plataforma
  precisa passar por uma validação completa antes de ser lançada em produção e cabe a você testá-la.

### 1.1 Instruções

- [X] **1.1.1 Crie um plano de testes documentado que cubra os principais fluxos da aplicação**
- [ ] **1.1.2 Execute os testes manualmente e documente os resultados**
- [ ] **1.1.3 Identifique potenciais problemas de UX/UI que poderiam impactar negativamente a experiência do usuário**

### 1.2 Cenários mínimos a serem testados

#### 1.2.1 Login com diferentes tipos de usuários disponíveis

|Feramenta|Link do Arquivo|
|:---|:---|
|![Gherkin](https://img.shields.io/badge/Cucumber-23D96C.svg?style=for-the-badge&logo=Cucumber&logoColor=white)|[Escrita dos testes  em gherkin](/features/1.2.1%20Login%20com%20diferentes%20tipos%20de%20usuários%20disponíveis.feature)|
|![Cypress](https://img.shields.io/badge/Cypress-69D3A7.svg?style=for-the-badge&logo=Cypress&logoColor=white)|[Arquivo do teste automatizado](/cypress/e2e/Login/login.cy.js)|

  ``` Gherkin
  Feature: Login de usuários no sistema
  Como um usuário do sistema
  Quero acessar o sistema com diferentes credenciais
  ```

  Para validar os comportamentos específicos de cada tipo de usuário

  |  ID   |        Usuario          |   Senha      |
  |:-----:|:-----------------------:|:------------:|
  |  01   |      standard_user      | secret_sauce |
  |  02   |     locked_out_user     | secret_sauce |
  |  03   |      problem_user       | secret_sauce |
  |  04   | performance_glitch_user | secret_sauce |
  |  05   |       error_user        | secret_sauce |
  |  06   |       visual_user       | secret_sauce |

 :lady_beetle: Tive dificuldade para obter os usuários e senha para o teste do UI TESTING[^3]
  ![alt text](/IMAGEM/3.1%20dificuldade/Usuario%20e%20%20Senha.png)

##### 1.2.1.1 Login bem-sucedido com usuário padrão

  ``` Gherkin
  Scenario: Login bem-sucedido com usuário padrão
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "standard_user" e a senha "secret_sauce"
  Then ele deve acessar o sistema com sucesso
  ```

  ![standard_user](/IMAGEM/2.1%20Cenario%20UI/Login/standard_user.gif)

##### 1.2.1.2 Login bloqueado com usuário locked_out_user

  ``` Gherkin
  Scenario: Login bloqueado com usuário locked_out_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "locked_out_user" e a senha "secret_sauce"
  Then ele deve ver a mensagem "Epic sadface: Sorry, this user has been locked out."
  ```
  
  **Teste Manual**
  ![locked_out_user](/IMAGEM/2.1%20Cenario%20UI/Login/locked_out_user.gif)

##### 1.2.1.3 Problemas ao acessar o sistema com usuário problem_user

  ``` Gherkin
  Scenario: Problemas ao acessar o sistema com usuário problem_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "problem_user" e a senha "secret_sauce"
  Then o sistema deve apresentar erros de comportamento no acesso
  ```

  ![problem_user](/IMAGEM/2.1%20Cenario%20UI/Login/problem_user.gif)

##### 1.2.1.4 Performance lenta com usuário performance_glitch_user

  ``` Gherkin
  Scenario: Performance lenta com usuário performance_glitch_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "performance_glitch_user" e a senha "secret_sauce"
  Then o sistema deve demorar para responder
  ```

  ![performance_glitch_user](/IMAGEM/2.1%20Cenario%20UI/Login/performance_glitch_user.gif)

##### 1.2.1.5 Erros ao acessar com usuário error_user

  ``` Gherkin
  Scenario: Erros ao acessar com usuário error_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "error_user" e a senha "secret_sauce"
  Then o sistema deve acessar com erros no comportamento
  ```

  ![error_user](/IMAGEM/2.1%20Cenario%20UI/Login/error_user.gif)

##### 1.2.1.6 Validar impacto visual com usuário visual_user

  ``` Gherkin
  Scenario: Validar impacto visual com usuário visual_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "visual_user" e a senha "secret_sauce"
  Then o sistema deve exibir comportamentos ou alterações visuais incomuns
  ```

  ![visual_user](/IMAGEM/2.1%20Cenario%20UI/Login/visual_user.gif)

##### 1.2.1.7 Validar o não preenchimento campo "Nome Usuario"

 ``` Gherkin
  Scenario: Validar o não preenchimento campo "Nome Usuario"
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere apenas a senha "secret_sauce"
  Then ele deve ver a mensagem "Epic sadface: Username is required"
  ```

##### 1.2.1.8 Validar o não preenchimento campo "Senha"

 ``` Gherkin
  Scenario: Validar o não preenchimento campo "Senha"
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "standard_user" 
  Then ele deve ver a mensagem "Epic sadface: PassWord is required"
  ```

##### 1.2.1.9 Validar o não preenchimento campos "Nome Usuario" e "Senha"

  ``` Gherkin
  Scenario: Validar o não preenchimento campos "Nome Usuario" e "Senha"
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "" e a senha ""
  Thenele deve ver a mensagem "Epic sadface: PassWord is required"
  ```

##### 1.2.1.10 Validar autenticação do usuario invalido

  ``` Gherkin
  Scenario: Validar autenticação do usuario invalido
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "nada" e a senha "pas123"
  Then ele deve ver a mensagem "Epic sadface: Username and password do not match any user in this service"
  ```

#### [1.2.2 Ordenação e filtragem de produtos](/features/1.2.2%20Ordenação%20e%20filtragem%20de%20produtos.feature)

  ``` Gherkin
  Feature: Ordenação e filtragem de produtos
  Como um usuário do sistema
  Quero ordenar e filtrar os produtos
  Para facilitar a busca pelo item desejado
  ```

##### 1.2.2.1 Ordenar produtos por preço ascendente

  ``` Gherkin
  Scenario: Ordenar produtos por preço ascendente
  Given o usuário está na página de listagem de produtos
  When ele seleciona a opção "Preço: menor para maior"
  Then os produtos devem ser exibidos em ordem crescente de preço
  ```

  ![Ordenar produtos por preço ascendente](/IMAGEM/2.1%20Cenario%20UI/Ordenar/Ordenar%20produtos%20por%20preço%20ascendente.gif)

##### 1.2.2.2 Ordenar produtos por preço descendente

  ``` Gherkin
  Scenario: Ordenar produtos por preço descendente
  Given o usuário está na página de listagem de produtos
  When ele seleciona a opção "Preço: maior para menor"
  Then os produtos devem ser exibidos em ordem decrescente de preço
  ```

  ![Ordenar produtos por preçodescendente](/IMAGEM/2.1%20Cenario%20UI/Ordenar/Ordenar%20produtos%20por%20preço%20descendente.gif)

##### 1.2.2.3 Ordenar produtos por nome de A a Z

  ``` Gherkin
  Scenario: Ordenar produtos por nome de A a Z
  Given o usuário está na página de listagem de produtos
  And há produtos com diferentes nomes listados
  When ele seleciona a opção "Nome: A a Z"
  Then os produtos devem ser exibidos em ordem alfabética crescente
  And o primeiro produto deve ter o nome que começa com a menor letra alfabética disponível
  ```

  ![Ordenar produtos por nome de A a Z](/IMAGEM/2.1%20Cenario%20UI/Ordenar/Ordenar%20produtos%20por%20nome%20de%20A%20a%20Z.gif)

##### 1.2.2.4 Ordenar produtos por nome de Z a A

  ``` Gherkin
  Scenario: Ordenar produtos por nome de Z a A
  Given o usuário está na página de listagem de produtos
  And há produtos com diferentes nomes listados
  When ele seleciona a opção "Nome: Z a A"
  Then os produtos devem ser exibidos em ordem alfabética decrescente
  And o primeiro produto deve ter o nome que começa com a maior letra alfabética disponível
  ```

  ![Ordenar produtos por nome de Z a A](/IMAGEM/2.1%20Cenario%20UI/Ordenar/Ordenar%20produtos%20por%20nome%20de%20Z%20a%20A.gif)

#### [1.2.3 Fluxo completo de compra (do carrinho até finalização)](/features/1.2.3%20Fluxo%20completo%20de%20compra%20do%20carrinho%20até%20finalização.feature)

  ``` Gherkin
  Feature: Fluxo completo de compra
  Como um usuário do sistema
  Quero adicionar produtos ao carrinho e finalizar a compra
  Para concluir a minha compra com sucesso
  ```

##### 1.2.3.1 Adicionar produto ao carrinho e finalizar a compra

  ``` Gherkin
  Scenario: Adicionar produto ao carrinho e finalizar a compra
  Given o usuário está na página de listagem de produtos
  And o usuário visualiza produtos disponíveis para compra
  When ele adiciona o produto "Produto A" ao carrinho
  Then o produto "Produto A" deve ser adicionado ao carrinho
  ```

  ![Adicionar produto ao carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/Adicionar%20produto%20ao%20carrinho.gif)

##### 1.2.3.2 Verificar itens no carrinho antes de finalizar a compra

  ``` Gherkin
  Scenario: Verificar itens no carrinho antes de finalizar a compra
  Given o usuário adicionou o "Produto A" ao carrinho
  When ele acessa o carrinho de compras
  Then o carrinho deve exibir o produto "Produto A"
  And o valor total do carrinho deve refletir o preço do "Produto A"
  ```

  ![Verificar itens no carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/Verificar%20itens%20no%20carrinho.gif)

##### 1.2.3.3 Remover produto do carrinho

  ``` Gherkin
  Scenario: Remover produto do carrinho
  Given o usuário tem o produto "Produto A" no carrinho
  When ele remove o "Produto A" do carrinho
  Then o carrinho não deve exibir o produto "Produto A"
  And o valor total do carrinho deve ser atualizado
  ```

  ![Remover produto do carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/Remover%20produto%20do%20carrinho.gif)

##### 1.2.3.4 Finalizar compra com sucesso

  ``` Gherkin
  Scenario: Finalizar compra com sucesso
  Given o usuário tem produtos no carrinho
  When ele clica em "Finalizar compra"
  And ele insere as informações de pagamento e endereço de entrega
  Then a compra deve ser finalizada com sucesso
  And o usuário deve ser redirecionado para a página de confirmação de pedido
  ```

  ![Finalizar compra com sucesso](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

##### 1.2.3.5 Verificar erro ao tentar finalizar compra sem itens no carrinho

  ``` Gherkin
  Scenario: Verificar erro ao tentar finalizar compra sem itens no carrinho
  Given o usuário não tem produtos no carrinho
  When ele tenta finalizar a compra
  Then ele deve ser informado que o carrinho está vazio
  And a opção de finalizar a compra deve ser desabilitada
  ```

  ![Verificar erro ao tentar finalizar compra sem itens no carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

##### 1.2.3.6 Aplicar código de desconto no carrinho

  ``` Gherkin
  Scenario: Aplicar código de desconto no carrinho
  Given o usuário tem o "Produto A" no carrinho
  And ele possui um código de desconto válido
  When ele aplica o código de desconto no carrinho
  Then o valor total do carrinho deve ser reduzido de acordo com o desconto
  And o usuário deve ver o valor do desconto aplicado
  ```

  ![Aplicar código de desconto no carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

##### 1.2.3.7 Aplicar código de desconto no carrinho

  ``` Gherkin
  Scenario: Aplicar código de desconto no carrinho
  Given o usuário tem o "Produto A" no carrinho
  And ele possui um código de desconto válido
  When ele aplica o código de desconto no carrinho
  Then o valor total do carrinho deve ser reduzido de acordo com o desconto
  And o usuário deve ver o valor do desconto aplicado
  ```

  ![Aplicar código de desconto no carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

##### 1.2.3.8 Confirmar detalhes do pedido após a finalização

  ``` Gherkin
  Scenario: Confirmar detalhes do pedido após a finalização
  Given o usuário finalizou a compra
  When ele visualiza a página de confirmação de pedido
  Then ele deve ver os detalhes do pedido, incluindo os produtos comprados, o valor total e a estimativa de entrega
  ```

  ![Confirmar detalhes do pedido após a finalização](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

#### [1.2.4 Remoção de itens do carrinho](/features/1.2.4%20Remoção%20de%20itens%20do%20carrinho.feature)

  ``` Gherkin
  Feature: Remoção de itens do carrinho
  Como um usuário do sistema
  Quero remover itens do meu carrinho
  Para atualizar a lista de produtos antes de finalizar a compra
  ```

##### 1.2.4.1 Remover um único item do carrinho

  ``` Gherkin
  Scenario: Remover um único item do carrinho
  Given o usuário tem o produto "Produto A" no carrinho
  When ele clica na opção de remover "Produto A"
  Then o produto "Produto A" deve ser removido do carrinho
  And o carrinho deve ser atualizado para refletir a remoção
  ```

  ![Remover produto do carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/Remover%20produto%20do%20carrinho.gif)

##### 1.2.4.2 Remover múltiplos itens do carrinho

  ``` Gherkin
  Scenario: Remover múltiplos itens do carrinho
  Given o usuário tem os produtos "Produto A" e "Produto B" no carrinho
  When ele remove o "Produto A" e o "Produto B"
  Then o carrinho deve ser vazio
  And o valor total do carrinho deve ser zero
  ```

  ![Remover múltiplos itens do carrinho](/IMAGEM/2.1%20Cenario%20UI/Remover/Remover%20múltiplos%20itens%20do%20carrinho.gif)

##### 1.2.4.3 Verificar atualização do valor após remoção

  ``` Gherkin
  Scenario: Verificar atualização do valor após remoção
  Given o usuário tem os produtos "Produto A" e "Produto B" no carrinho
  And o valor total do carrinho é de R$ 100,00
  When ele remove o "Produto A" do carrinho
  Then o carrinho deve exibir apenas o "Produto B"
  And o valor total do carrinho deve ser ajustado para refletir o preço do "Produto B"
  ```

  :lady_beetle: Não  possui o campo valor total[^1].

  ![campo de somatorio](/IMAGEM/2.1%20Cenario%20UI/BUG/campo%20de%20somatorio.png)

##### 1.2.4.4 Verificar se o carrinho está vazio após remoção de todos os itens

  ``` Gherkin
  Scenario: Verificar se o carrinho está vazio após remoção de todos os itens
  Given o usuário tem produtos no carrinho
  When ele remove todos os itens do carrinho
  Then o carrinho deve estar vazio
  And a mensagem "Seu carrinho está vazio" deve ser exibida
  ```

  :lady_beetle: a mensagem "Seu carrinho está vazio" não esta sendo exibida[^5]
  ![a mensagem "Seu carrinho está vazio" não esta sendo exibida](/IMAGEM/2.1%20Cenario%20UI/BUG/a%20mensagem%20Seu%20carrinho%20está%20vazio%20deve%20ser%20exibida.png)
  
##### 1.2.4.5 Cancelar remoção de item do carrinho

  ``` Gherkin
  Scenario: Cancelar remoção de item do carrinho
  Given o usuário tem o produto "Produto A" no carrinho
  When ele clica na opção de remover "Produto A"
  And escolhe cancelar a remoção
  Then o produto "Produto A" deve permanecer no carrinho
  And o valor total do carrinho não deve ser alterado
  ```

  :lady_beetle:Não foi possivel fazer o cancelamento da Exclusão[^4] [^1]

  ![Cancelar remoção de item do carrinho](/IMAGEM/2.1%20Cenario%20UI/BUG/Cancelar%20remoção%20de%20item%20do%20carrinho.gif)

#### [1.2.5 Navegação entre páginas](/features/1.2.5%20Navegação%20entre%20páginas.feature)

  ``` Gherkin
  Feature: Navegação entre páginas
  Como um usuário do sistema
  Quero navegar entre as diferentes páginas do site
  Para explorar os produtos e realizar minha compra de forma eficiente
  ```

| Local        | Caminho                                               |
|:-------------|:------------------------------------------------------|
| Login        | [saucedemo](https://www.saucedemo.com)                |
| Seu carrinho | [saucedemo/cart](https://www.saucedemo.com/cart.html) |
| Home         | [Home](https://www.saucedemo.com/inventory.html)      |

##### 1.2.5.1 Navegar da página inicial para a listagem de produtos

  ``` Gherkin
  Scenario: Navegar da página inicial para a listagem de produtos
  Given o usuário está na página inicial
  When ele clica no link "Produtos" no menu
  Then ele deve ser redirecionado para a página de listagem de produtos
  ```

  :lady_beetle:

##### 1.2.5.2 Navegar da página de listagem de produtos para a página de detalhes de um produto

  ``` Gherkin
  Scenario: Navegar da página de listagem de produtos para a página de detalhes de um produto
  Given o usuário está na página de listagem de produtos
  And o produto "Produto A" está listado
  When ele clica no produto "Produto A"
  Then ele deve ser redirecionado para a página de detalhes do "Produto A"
  ```

  ![Navegar da página de listagem de produtos para a página de detalhes de um produto](/IMAGEM/2.1%20Cenario%20UI/Navegar/Navegar%20da%20página%20de%20listagem%20de%20produtos%20para%20a%20página%20de%20detalhes%20de%20um%20produto.gif)

##### 1.2.5.3 Navegar de volta da página de detalhes para a página de listagem de produtos

  ``` Gherkin
  Scenario: Navegar de volta da página de detalhes para a página de listagem de produtos
  Given o usuário está na página de detalhes do "Produto A"
  When ele clica no link "Voltar para listagem de produtos"
  Then ele deve ser redirecionado para a página de listagem de produtos
  ```

  ![Navegar de volta da página de detalhes para a página de listagem de produtos](/IMAGEM/2.1%20Cenario%20UI/Navegar/Navegar%20de%20volta%20da%20página%20de%20detalhes%20para%20a%20página%20de%20listagem%20de%20produtos.gif)

##### 1.2.5.4 Navegar do carrinho para a finalização da compra

  ``` Gherkin
  Scenario: Navegar do carrinho para a finalização da compra
  Given o usuário tem itens no carrinho
  When ele clica no botão "Finalizar compra" 
  Then ele deve ser redirecionado para a página de finalização da compra 
  ```

  ![Bug do botão "Finalizar compra"](/IMAGEM/2.1%20Cenario%20UI/BUG/Bug%20do%20botão%20Finalizar%20compra.png)
  :lady_beetle: O texto do botão está incorreto deveria ser "Finalizar compra" e estar "Confirar" [^2]

##### 1.2.5.5 Navegar para a página de ‘login’ a partir da página de carrinho

  ``` Gherkin
  Scenario: Navegar para a página de login a partir da página de carrinho
  Given o usuário não está logado
  When ele clica no botão "Login" na página do carrinho
  Then ele deve ser redirecionado para a página de login
  ```

  :lady_beetle:

##### 1.2.5.6 Verificar navegação para página de confirmação após finalização da compra

  ``` Gherkin
  Scenario: Verificar navegação para página de confirmação após finalização da compra
  Given o usuário finalizou a compra com sucesso
  When ele é redirecionado para a página de confirmação de pedido 
  Then ele deve ver a mensagem de confirmação e os detalhes do pedido 
  ```

  :lady_beetle:

#### [1.2.6 Logout](/features/1.2.6%20Logout.feature)

  ``` Gherkin
  Feature: Logout pelo menu
  Como um usuário autenticado
  Quero realizar logout através do menu
  Para encerrar minha sessão com segurança
  ```

##### 1.2.6.1 Logout com sucesso pelo menu

  ``` Gherkin
  Scenario: Logout com sucesso pelo menu
  Given o usuário está logado no sistema
  And o menu está visível
  When ele clica no menu
  And seleciona a opção "Logout"
  Then ele deve ser redirecionado para a página de login
  And sua sessão deve ser encerrada
  ```

  ![Logout com sucesso pelo menu](/IMAGEM/2.1%20Cenario%20UI/Logout/Logout%20com%20sucesso%20pelo%20menu.gif)

##### 1.2.6.2 Menu não visível para utilizadores não autenticados

  ``` Gherkin
  Scenario: Menu não visível para usuários não autenticados
  Given o usuário não está logado no sistema
  When ele tenta acessar o menu
  Then o menu de logout não deve ser exibido
  ```

  ![Menu não visível para usuários não autenticados](/IMAGEM/2.1%20Cenario%20UI/Logout/Menu%20não%20visível%20para%20usuários%20não%20autenticados.png)

##### 1.2.6.3 Verificar existência da opção de logout no menu

  ``` Gherkin
  Scenario: Verificar existência da opção de logout no menu
  Given o usuário está logado no sistema
  When ele clica no menu
  Then a opção "Logout" deve estar disponível
  ```

  ![Verificar existência da opção de logout no menu](/IMAGEM/2.1%20Cenario%20UI/Logout/Verificar%20existência%20da%20opção%20de%20logout%20no%20menu.gif)

### 1.3 Entregáveis

- [ ] 1.3.1 Documento formatado em Markdown (.md) contendo:
  - [ ] 1.3.1.1 Plano de testes estruturado com casos de teste
  - [ ] 1.3.1.2 Resultados dos testes executados
  - [ ] 1.3.1.3 Sugestões de melhorias de UX/UI
  - [ ] 1.3.1.4 Lista de bugs encontrados (se houver)
  - [ ] 1.3.1.5 Análise de riscos da aplicação

- [ ] 1.3.2 Extras (diferenciais):
  - [ ] 1.3.2.1 Testes de responsividade
  - [ ] 1.3.2.2 Testes de acessibilidade
  - [ ] 1.3.2.3 Sugestões de automação

  ### 1.4 Critérios de avaliação

  - [ ] 1.4.1 Organização e clareza da documentação, dentro dos critérios fornecidos
  - [ ] 1.4.2 Cobertura dos cenários críticos
  - [ ] 1.4.3 Capacidade de identificar eventuais bugs/problemas
  - [ ] 1.4.4 Qualidade das sugestões de melhoria
  - [ ] 1.4.5 Pensamento crítico sobre eventuais riscos e impactos no negócio

### 1.5 Observações

- [X] 1.5.1 A documentação deve ser entregue obrigatoriamente em Markdown (.md)
- [X] 1.5.2 Quando considerar necessário, explique/justifique a suas decisões
- [X] 1.5.3 Inclua prints de tela quando relevante

</details>

---------------------------------
<details>
  <summary>

## 2. API TESTING

  </summary>

  A tarefa aqui é testar a [API do Restful-Booker](https://restful-booker.herokuapp.com), um sistema de reservas de
  hotel. Suponha que a API precisa ser validada antes de ser integrada com o front-end e cabe a você testá-la.

### 2.1 Instruções

- [ ] 2.1.1 Analise a documentação da API fornecida
- [ ] 2.1.2 Crie e execute testes para os endpoints principais
- [ ] 2.1.3 Documente os resultados e comportamentos encontrados

### 2.2 Cenários

- [ ] 2.2.1 Autenticação:
  - [X] [2.2.1.1 Gerar token de
  autenticação](/JSON/2.2%20cenarios%20API/2.2.1.1%20Gerar%20token%20de%20autenticação%20via%20Json.json)
  ![2.2.1.1 Gerar token de autenticação](/IMAGEM/2.2%20cenario%20API/2.2.1.1%20Gerar%20token%20de%20autenticação.png)
  - [ ] 2.2.1.2 Tentar gerar token com credenciais inválidas
- [X] 2.2.2 Gestão de reservas:
  ![Autorização](/IMAGEM/2.2%20cenario%20API/2.2.2%20Gestão%20de%20reservas/Autorização.png)
  - [X] [2.2.2.1 Criar uma nova
  reserva](/JSON/2-2%20cenarios/2.2.2%20Gestão%20de%20reservas/2.2.2.1%20Criar%20uma%20nova%20reserva.json)
  ![Criar uma nova
  reserva](/IMAGEM/2.2%20cenario%20API/2.2.2%20Gestão%20de%20reservas/2.2.2.1%20Criar%20uma%20nova%20reserva.png)
  - [X] [2.2.2.2 Buscar uma reserva
  específica](/JSON/2-2%20cenarios/2.2.2%20Gestão%20de%20reservas/2.2.2.2%20Buscar%20uma%20reserva%20específica.json)
  ![Buscar uma reserva
  específica](/IMAGEM/2.2%20cenario%20API/2.2.2%20Gestão%20de%20reservas/2.2.2.2%20Buscar%20uma%20reserva%20específica.gif)
  - [X] [2.2.2.3 Listar todas as
  reservas](/JSON/2-2%20cenarios/2.2.2%20Gestão%20de%20reservas/2.2.2.3%20Listar%20todas%20as%20reservas.json)
  ![Listar todas as
  reservas](/IMAGEM/2.2%20cenario%20API/2.2.2%20Gestão%20de%20reservas/2.2.2.3%20Listar%20todas%20as%20reservas.gif)
  - [X] 2.2.2.4 Atualizar uma reserva existente
  {[Antes](/JSON/2-2%20cenarios/2.2.2%20Gestão%20de%20reservas/Antes%202.2.2.4%20Atualizar%20uma%20reserva%20existente.json)
  e
  [Depois](/JSON/2-2%20cenarios/2.2.2%20Gestão%20de%20reservas/Depois%202.2.2.4%20Atualizar%20uma%20reserva%20existente.json)}
  ![Antes de Atualizar uma reserva
  existente](/IMAGEM/2.2%20cenario%20API/2.2.2%20Gestão%20de%20reservas/Antes%20de%20Atualizar%20uma%20reserva%20existente.png)
  - [X] 2.2.2.5 Deleter uma reserva
- [ ] 2.2.3 Filtros e buscas:
  - [ ] 2.2.3.1 Buscar reservas por nome
  - [ ] 2.2.3.2 Buscar reservas por data de check-in
  - [ ] 2.2.3.3 Buscar reservas por data de check-out

- [ ] 2.3 Entregáveis:
  - [ ] 2.3.1 Collection contendo:
  - [ ] 2.3.1.1 Todos os requests organizados
  - [ ] 2.3.1.2 Pelo menos um teste para cada request
  - [ ] 2.3.1.3 Variáveis de ambiente configuradas
  - [ ] 2.3.2 Documento em Markdown (.md) contendo:
  - [ ] 2.3.2.1 Lista de cenários testados
  - [ ] 2.3.2.2 Resultados obtidos
  - [ ] 2.3.2.3 Bugs encontrados (se houver)

- [ ] 2.4 Pontos de atenção:
  - [ ] 2.4.1 Tratamento de erros
  - [ ] 2.4.2 Validação de campos obrigatórios
  - [ ] 2.4.3 Formato das datas
  - [ ] 2.4.4 Códigos de resposta HTTP

- [ ] 2.5 Observações:
  - [ ] 2.6.1 Use Postman ou qualquer outra ferramenta da sua preferência
  - [ ] 2.6.2 Documente quaisquer premissas assumidas, se possível

</details>

---------------------------------
<details>
  <summary>

## 3. Considerações finais

  </summary>

  Caso não consiga completar os testes até o prazo definido:

### 3.1 Garanta que tudo que foi construído esteja em funcionamento

### 3.2 Relate na documentação quais foram as dificuldades encontradas

- Tive dificuldade para obter os usuários e senha para o teste do UI TESTING

### 3.3 Documente o que foi implementado e o que ficou pendente

</details>

---------------------------------
<details>
  <summary>

## 4. Envio dos entregáveis

  </summary>
  Os entregáveis de ambos os testes deverão ser hospedados num repositório no seu GitHub. O link do repositório deverá
  ser fornecido por meio deste formulário. Não serão aceitos links de entregáveis enviados por outros meios.
</details>

Boa sorte! 🍀
Enviar entregáveis

---------------------------------

<details>

<summary>

## 📬 Entre em contato pelo :point_left:

</summary>

> [![Telegram](https://img.shields.io/badge/Telegram-000?style=for-the-badge&logo=telegram&logoColor=2CA5E0)](https://t.me/Carlaol) [![WhatsApp](https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white)](https://api.whatsapp.com/send?1=pt_BR&phone=5521985745077) [![Gmail](https://img.shields.io/badge/Gmail-333333?style=for-the-badge&logo=gmail&logoColor=red)](mailto:carlostecnico@mail.com) [![X](https://img.shields.io/badge/X-000?style=for-the-badge&logo=x)](https://x.com/Carlao_Me_Ajuda) [![Instagram](https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/carlao.me.ajuda/) [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/carlos-eduardo-dos-s-figueiredo/)  [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/carloseduardonit/) [![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.com/channels/@carloseduardonit/) ![Slack](https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=slack&logoColor=white)

</details>

---------------------------------
[^1]::lady_beetle: Não tem um campo de somatorio dos produtos no carrinho
[^2]::lady_beetle: O texto do botão está incorreto deveria ser "Finalizar compra" e estar "Confirar"
[^3]::lady_beetle: Foi dificil obter as credências dos usuários
[^4]::lady_beetle: Não existe a opção de cancelamento da exclusão e o mesmo exclui direito sem a confimação do usuário
[^5]::lady_beetle: Ao excluir todos os itens a mensagem não é exibida.
