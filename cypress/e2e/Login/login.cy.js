const { isNullOrUndefined, isNull, isUndefined } = require("util");

describe("Funcionalidade: Login", () => {
  let id;
  let senha = "secret_sauce";
  it("1.2.1.1 Login bem-sucedido com usuário padrão", () => {
    acessarUsuario("standard_user", senha);
  });

  it("1.2.1.2 Login bloqueado com usuário locked_out_user", () => {
    acessarUsuario("locked_out_user", senha);
  });

  it('1.2.1.3 Problemas ao acessar o sistema com usuário problem_user', () => {
    acessarUsuario("problem_user", senha);
  });

  it('1.2.1.4 Performance lenta com usuário performance_glitch_user', () => {
    acessarUsuario("performance_glitch_user", senha);
  });

  it('1.2.1.5 Erros ao acessar com usuário error_user', () => {
    acessarUsuario("error_user", senha);
  });

  it('1.2.1.6 Validar impacto visual com usuário visual_user', () => {
    acessarUsuario("visual_user", senha);
  });

  it('1.2.1.7 Validar o não preenchimento campo "Nome Usuario"', () => {
    acessarUsuario("", senha);
  });

  it.skip('1.2.1.8', () => {
    acessarUsuario("visual_user", null);
  });

  it('1.2.1.9', () => {
    acessarUsuario("", "");
  });

  it('1.2.1.10', () => {
    acessarUsuario('carlos', 'eee');
  });
});

function acessarUsuario(usuario, password) {
  cy.visit('/');
  if (!isEmptyUser(usuario)) { cy.get('[data-test="username"]').type(usuario); }
  if (!isEmptyPass(password)) { cy.get('[data-test="password"]').type(password); }
  cy.get("[data-test='login-button']").click();
  testeUsuarioSenha(usuario);
}

function isEmptyUser(usuario) { return usuario === ""; }
function isEmptyPass(senha) {
  

  return (senha === "");
}

function testeUsuarioSenha(usuario, senha) {
  if (isEmptyPass(senha) && isEmptyUser(usuario)) {
    cy.get('[data-test="error"]').contains('Epic sadface: Username is required')
  }
  if (isEmptyPass(senha)) {
    cy.get('[data-test="error"]').contains('Epic sadface: Password is required')
  } else {
    testeUsuario(usuario);
  }
}


function testeUsuario(usuario) {
  switch (usuario) {
    case "standard_user":
      cy.url().should("include", "/inventory");
      cy.get('[data-test="inventory-item-sauce-labs-backpack-img"]')
        .should("be.visible")
        .should("have.attr", "src", "/static/media/sauce-backpack-1200x1500.0a0b85a3.jpg");
      break;
    case "locked_out_user":
      cy.get('[data-test="error"]').contains('Epic sadface: Sorry, this user has been locked out.');
      break;
    case "problem_user":
      cy.url().should("include", "/inventory");
      cy.get('[data-test="inventory-item-sauce-labs-backpack-img"]')
        .should("be.visible")
        //Bug referente a comportamento da imagem
        .should("have.attr", "src", "/static/media/sl-404.168b1cce.jpg")
      break;
    case "performance_glitch_user":
      cy.url().should("include", "/inventory");
      break;
    case "error_user":
      cy.url().should("include", "/inventory");
      break;
    case "visual_user":
      cy.url().should("include", "/inventory");
      cy.get('[data-test="inventory-item-sauce-labs-backpack-img"]')
        .should("be.visible")
        //Bug referente a comportamento da imagem
        .should("have.attr", "src", "/static/media/sl-404.168b1cce.jpg")
      break;
    default:
      if (isEmptyUser(usuario)) {
        cy.get('[data-test="error"]').contains('Epic sadface: Username is required');
      }
      if (!isEmptyUser(usuario)) {
        cy.get('[data-test="error"]').contains('Epic sadface: Username and password do not match any user in this service');
      }

  }
}