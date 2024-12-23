# Teste Prático QA Testing ID: bb7f0940-aee3-4b6b-a625-a2c58b9d62f7

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
> - Dor no estomago
> - Estudo concorrente:
>   - Semana de Prova da faculdade
>   - [Prova de certificação Salesforce](https://www.linkedin.com/feed/update/urn:li:activity:7275676610475798530/)
> - Clique nos Titulos abaixo para ver os paragrafos conforme a demostração: :point_down:

<img src="/IMAGEM/demostracao.gif" alt="Demostração de com fazer">

---------------------------------
<details>
  <summary>

## 1. UI TESTING

  </summary>
  A tarefa aqui é testar a plataforma de e-commerce [Sauce Demo](https://www.saucedemo.com). Suponha que a plataforma
  precisa passar por uma validação completa antes de ser lançada em produção e cabe a você testá-la.

### 1.1 Instruções

- [ ] 1.1.1 Crie um plano de testes documentado que cubra os principais fluxos da aplicação
- [ ] 1.1.2 Execute os testes manualmente e documente os resultados
- [ ] 1.1.3 Identifique potenciais problemas de UX/UI que poderiam impactar negativamente a experiência do usuário

### 1.2 Cenários mínimos a serem testados

- [X] [1.2.1 Login com diferentes tipos de usuários
  disponíveis](/features/1.2.1%20Login%20com%20diferentes%20tipos%20de%20usuários%20disponíveis.feature)

  ``` Gherkin
  Feature: Login de usuários no sistema
  Como um usuário do sistema
  Quero acessar o sistema com diferentes credenciais
  ```

  Para validar os comportamentos específicos de cada tipo de usuário

  |ID |Usuario |Senha |
  |---:| :---: |:---: |
  |01 |standard_user |secret_sauce |
  |02 |locked_out_user |secret_sauce |
  |03 |problem_user |secret_sauce |
  |04 |performance_glitch_user |secret_sauce |
  |05 |error_user |secret_sauce |
  |06 |visual_user |secret_sauce |

  ``` Gherkin
  Scenario: Login bem-sucedido com usuário padrão
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "standard_user" e a senha "secret_sauce"
  Then ele deve acessar o sistema com sucesso
  ```

  ![standard_user](/IMAGEM/2.1%20Cenario%20UI/Login/standard_user.gif)

  ``` Gherkin
  Scenario: Login bloqueado com usuário locked_out_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "locked_out_user" e a senha "secret_sauce"
  Then ele deve ver a mensagem "Epic sadface: Sorry, this user has been locked out."
  ```

  ![locked_out_user](/IMAGEM/2.1%20Cenario%20UI/Login/locked_out_user.gif)

  ``` Gherkin
  Scenario: Problemas ao acessar o sistema com usuário problem_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "problem_user" e a senha "secret_sauce"
  Then o sistema deve apresentar erros de comportamento no acesso
  ```

  ![problem_user](/IMAGEM/2.1%20Cenario%20UI/Login/problem_user.gif)

  ``` Gherkin
  Scenario: Performance lenta com usuário performance_glitch_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "performance_glitch_user" e a senha "secret_sauce"
  Then o sistema deve demorar para responder
  ```

  ![performance_glitch_user](/IMAGEM/2.1%20Cenario%20UI/Login/performance_glitch_user.gif)

  ``` Gherkin
  Scenario: Erros ao acessar com usuário error_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "error_user" e a senha "secret_sauce"
  Then o sistema deve acessar com erros no comportamento
  ```

  ![error_user](/IMAGEM/2.1%20Cenario%20UI/Login/error_user.gif)

  ``` Gherkin
  Scenario: Validar impacto visual com usuário visual_user
  Given o usuário está na página de login "https://www.saucedemo.com/"
  When ele insere o nome de usuário "visual_user" e a senha "secret_sauce"
  Then o sistema deve exibir comportamentos ou alterações visuais incomuns
  ```

  ![visual_user](/IMAGEM/2.1%20Cenario%20UI/Login/visual_user.gif)

- [X] [1.2.2 Ordenação e filtragem de produtos](/features/1.2.2%20Ordenação%20e%20filtragem%20de%20produtos.feature)

  ``` Gherkin
  Feature: Ordenação e filtragem de produtos
  Como um usuário do sistema
  Quero ordenar e filtrar os produtos
  Para facilitar a busca pelo item desejado
  ```

  ``` Gherkin
  Scenario: Ordenar produtos por preço ascendente
  Given o usuário está na página de listagem de produtos
  When ele seleciona a opção "Preço: menor para maior"
  Then os produtos devem ser exibidos em ordem crescente de preço
  ```

  ![Ordenar produtos por preço ascendente](/IMAGEM/2.1%20Cenario%20UI/Ordenar/Ordenar%20produtos%20por%20preço%20ascendente.gif)

  ``` Gherkin
  Scenario: Ordenar produtos por preço descendente
  Given o usuário está na página de listagem de produtos
  When ele seleciona a opção "Preço: maior para menor"
  Then os produtos devem ser exibidos em ordem decrescente de preço
  ```

  ![Ordenar produtos por preçodescendente](/IMAGEM/2.1%20Cenario%20UI/Ordenar/Ordenar%20produtos%20por%20preço%20descendente.gif)

  ``` Gherkin
  Scenario: Ordenar produtos por nome de A a Z
  Given o usuário está na página de listagem de produtos
  And há produtos com diferentes nomes listados
  When ele seleciona a opção "Nome: A a Z"
  Then os produtos devem ser exibidos em ordem alfabética crescente
  And o primeiro produto deve ter o nome que começa com a menor letra alfabética disponível
  ```

  ![Ordenar produtos por nome de A a Z](/IMAGEM/2.1%20Cenario%20UI/Ordenar/Ordenar%20produtos%20por%20nome%20de%20A%20a%20Z.gif)

  ``` Gherkin
  Scenario: Ordenar produtos por nome de Z a A
  Given o usuário está na página de listagem de produtos
  And há produtos com diferentes nomes listados
  When ele seleciona a opção "Nome: Z a A"
  Then os produtos devem ser exibidos em ordem alfabética decrescente
  And o primeiro produto deve ter o nome que começa com a maior letra alfabética disponível
  ```

  ![Ordenar produtos por nome de Z a A](/IMAGEM/2.1%20Cenario%20UI/Ordenar/Ordenar%20produtos%20por%20nome%20de%20Z%20a%20A.gif)

- [ ] [1.2.3 Fluxo completo de compra (do carrinho até
  finalização)](/features/1.2.3%20Fluxo%20completo%20de%20compra%20do%20carrinho%20até%20finalização.feature)

  ``` Gherkin
  Feature: Fluxo completo de compra
  Como um usuário do sistema
  Quero adicionar produtos ao carrinho e finalizar a compra
  Para concluir a minha compra com sucesso
  ```

  ``` Gherkin
  Scenario: Adicionar produto ao carrinho e finalizar a compra
  Given o usuário está na página de listagem de produtos
  And o usuário visualiza produtos disponíveis para compra
  When ele adiciona o produto "Produto A" ao carrinho
  Then o produto "Produto A" deve ser adicionado ao carrinho
  ```

  ![Adicionar produto ao carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/Adicionar%20produto%20ao%20carrinho.gif)

  ``` Gherkin
  Scenario: Verificar itens no carrinho antes de finalizar a compra
  Given o usuário adicionou o "Produto A" ao carrinho
  When ele acessa o carrinho de compras
  Then o carrinho deve exibir o produto "Produto A"
  And o valor total do carrinho deve refletir o preço do "Produto A"
  ```

  ![Verificar itens no carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/Verificar%20itens%20no%20carrinho.gif)

  ``` Gherkin
  Scenario: Remover produto do carrinho
  Given o usuário tem o produto "Produto A" no carrinho
  When ele remove o "Produto A" do carrinho
  Then o carrinho não deve exibir o produto "Produto A"
  And o valor total do carrinho deve ser atualizado
  ```

  ![Remover produto do carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/Remover%20produto%20do%20carrinho.gif)

  ``` Gherkin
  Scenario: Finalizar compra com sucesso
  Given o usuário tem produtos no carrinho
  When ele clica em "Finalizar compra"
  And ele insere as informações de pagamento e endereço de entrega
  Then a compra deve ser finalizada com sucesso
  And o usuário deve ser redirecionado para a página de confirmação de pedido
  ```

  ![Finalizar compra com sucesso](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

  ``` Gherkin
  Scenario: Verificar erro ao tentar finalizar compra sem itens no carrinho
  Given o usuário não tem produtos no carrinho
  When ele tenta finalizar a compra
  Then ele deve ser informado que o carrinho está vazio
  And a opção de finalizar a compra deve ser desabilitada
  ```

  ![Verificar erro ao tentar finalizar compra sem itens no carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

  ``` Gherkin
  Scenario: Aplicar código de desconto no carrinho
  Given o usuário tem o "Produto A" no carrinho
  And ele possui um código de desconto válido
  When ele aplica o código de desconto no carrinho
  Then o valor total do carrinho deve ser reduzido de acordo com o desconto
  And o usuário deve ver o valor do desconto aplicado
  ```

  ![Aplicar código de desconto no carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

  ``` Gherkin
  Scenario: Aplicar código de desconto no carrinho
  Given o usuário tem o "Produto A" no carrinho
  And ele possui um código de desconto válido
  When ele aplica o código de desconto no carrinho
  Then o valor total do carrinho deve ser reduzido de acordo com o desconto
  And o usuário deve ver o valor do desconto aplicado
  ```

  ![Aplicar código de desconto no carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

  ``` Gherkin
  Scenario: Confirmar detalhes do pedido após a finalização
  Given o usuário finalizou a compra
  When ele visualiza a página de confirmação de pedido
  Then ele deve ver os detalhes do pedido, incluindo os produtos comprados, o valor total e a estimativa de entrega
  ```

    ![Confirmar detalhes do pedido após a finalização](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/)

- [ ] [1.2.4 Remoção de itens do carrinho](/features/1.2.4%20Remoção%20de%20itens%20do%20carrinho.feature)

  ``` Gherkin
  Feature: Remoção de itens do carrinho
  Como um usuário do sistema
  Quero remover itens do meu carrinho
  Para atualizar a lista de produtos antes de finalizar a compra
  ```

  ``` Gherkin
  Scenario: Remover um único item do carrinho
  Given o usuário tem o produto "Produto A" no carrinho
  When ele clica na opção de remover "Produto A"
  Then o produto "Produto A" deve ser removido do carrinho
  And o carrinho deve ser atualizado para refletir a remoção
  ```

  ![Remover produto do carrinho](/IMAGEM/2.1%20Cenario%20UI/FluxoCompleto/Remover%20produto%20do%20carrinho.gif)

  ``` Gherkin
  Scenario: Remover múltiplos itens do carrinho
  Given o usuário tem os produtos "Produto A" e "Produto B" no carrinho
  When ele remove o "Produto A" e o "Produto B"
  Then o carrinho deve ser vazio
  And o valor total do carrinho deve ser zero
  ```

  ![Remover múltiplos itens do carrinho](/IMAGEM/2.1%20Cenario%20UI/Remover/)

  ``` Gherkin
  Scenario: Verificar atualização do valor após remoção
  Given o usuário tem os produtos "Produto A" e "Produto B" no carrinho
  And o valor total do carrinho é de R$ 100,00
  When ele remove o "Produto A" do carrinho
  Then o carrinho deve exibir apenas o "Produto B"
  And o valor total do carrinho deve ser ajustado para refletir o preço do "Produto B"
  ```

  ![Verificar atualização do valor após remoção](/IMAGEM/2.1%20Cenario%20UI/Remover/)

  ``` Gherkin
  Scenario: Verificar se o carrinho está vazio após remoção de todos os itens
  Given o usuário tem produtos no carrinho
  When ele remove todos os itens do carrinho
  Then o carrinho deve estar vazio
  And a mensagem "Seu carrinho está vazio" deve ser exibida
  ```

  ![Verificar se o carrinho está vazio após remoção de todos os itens](/IMAGEM/2.1%20Cenario%20UI/Remover/)

  ``` Gherkin
  Scenario: Cancelar remoção de item do carrinho
  Given o usuário tem o produto "Produto A" no carrinho
  When ele clica na opção de remover "Produto A"
  And escolhe cancelar a remoção
  Then o produto "Produto A" deve permanecer no carrinho
  And o valor total do carrinho não deve ser alterado
  ```
  
  ![Cancelar remoção de item do carrinho](/IMAGEM/2.1%20Cenario%20UI/Remover/)

- [ ] [1.2.5 Navegação entre páginas](/features/1.2.5%20Navegação%20entre%20páginas.feature)

  ``` Gherkin
  Feature: Navegação entre páginas
  Como um usuário do sistema
  Quero navegar entre as diferentes páginas do site
  Para explorar os produtos e realizar minha compra de forma eficiente
  ```

  ``` Gherkin
  Scenario: Navegar da página inicial para a listagem de produtos
  Given o usuário está na página inicial
  When ele clica no link "Produtos" no menu
  Then ele deve ser redirecionado para a página de listagem de produtos
  ```

  ``` Gherkin
  Scenario: Navegar da página de listagem de produtos para a página de detalhes de um produto
  Given o usuário está na página de listagem de produtos
  And o produto "Produto A" está listado
  When ele clica no produto "Produto A"
  Then ele deve ser redirecionado para a página de detalhes do "Produto A"
  ```

  ![Navegar da página de listagem de produtos para a página de detalhes de um produto](/IMAGEM/2.1%20Cenario%20UI/Navegar/Navegar%20da%20página%20de%20listagem%20de%20produtos%20para%20a%20página%20de%20detalhes%20de%20um%20produto.gif)

  ``` Gherkin
  Scenario: Navegar de volta da página de detalhes para a página de listagem de produtos
  Given o usuário está na página de detalhes do "Produto A"
  When ele clica no link "Voltar para listagem de produtos"
  Then ele deve ser redirecionado para a página de listagem de produtos
  ```

  ![Navegar de volta da página de detalhes para a página de listagem de produtos](/IMAGEM/2.1%20Cenario%20UI/Navegar/Navegar%20de%20volta%20da%20página%20de%20detalhes%20para%20a%20página%20de%20listagem%20de%20produtos.gif)

  ``` Gherkin
  Scenario: Navegar do carrinho para a finalização da compra
  Given o usuário tem itens no carrinho
  When ele clica na opção "Finalizar compra" 
  Then ele deve ser redirecionado para a página de finalização da compra 
  ```

  :lady_beetle:

  ``` Gherkin
  Scenario: Navegar para a página de login a partir da página de carrinho
  Given o usuário não está logado
  When ele clica no botão "Login" na página do carrinho
  Then ele deve ser redirecionado para a página de login
  ```

  ``` Gherkin
  Scenario: Verificar navegação para página de confirmação após finalização da compra
  Given o usuário finalizou a compra com sucesso
  When ele é redirecionado para a página de confirmação de pedido 
  Then ele deve ver a mensagem de confirmação e os detalhes do pedido 
  ```
  
 :lady_beetle:

- [X] [1.2.6 Logout](/features/1.2.6%20Logout.feature)

  ``` Gherkin
  Feature: Logout pelo menu
  Como um usuário autenticado
  Quero realizar logout através do menu
  Para encerrar minha sessão com segurança
  ```

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

  ``` Gherkin
  Scenario: Menu não visível para usuários não autenticados
  Given o usuário não está logado no sistema
  When ele tenta acessar o menu
  Then o menu de logout não deve ser exibido
  ```

  ![Menu não visível para usuários não
  autenticados](/IMAGEM/2.1%20Cenario%20UI/Logout/Menu%20não%20visível%20para%20usuários%20não%20autenticados.png)

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
  - :lady_beetle: Não tem um campo de somatorio dos produtos no carrinho
  ![campo de somatorio](/IMAGEM/2.1%20Cenario%20UI/BUG/campo%20de%20somatorio.png)
  - :lady_beetle:
  - :lady_beetle:
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
  - Tive dificuldade para obter os usuarios e senha para o teste do UI TESTING
  ![alt text](/IMAGEM/3.1%20dificuldade/Usuario%20e%20%20Senha.png)

### 1.5 Observações

- [ ] 1.5.1 A documentação deve ser entregue obrigatoriamente em Markdown (.md)
- [ ] 1.5.2 Quando considerar necessário, explique/justifique suas decisões
- [ ] 1.5.3 Inclua prints de tela quando relevante

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
  - [X] 2.2.2.5 Deletar uma reserva
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
  - [ ] 2.6.1 Use Postman ou qualquer outra ferramenta de sua preferência
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

- Tive dificuldade para obter os usuarios e senha para o teste do UI TESTING

### 3.3 Documente o que foi implementado e o que ficou pendente

</details>

---------------------------------
<details>
  <summary>

## 4. Envio dos entregáveis

  </summary>
  Os entregáveis de ambos os testes deverão ser hospedados em um repositório no seu GitHub. O link do repositório deverá
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
