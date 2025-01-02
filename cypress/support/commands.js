// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })
Cypress.Commands.add("usuario", () => {
  cy.visit('/', { log: false }).log('Acessou o site');

  cy.get('[data-test="username"]', { log: false })
    .type("standard_user", { log: false })
    .log("Foi prenchido o nome usuario");

  cy.get('[data-test="password"]', { log: false })
    .type("secret_sauce", { log: false })
    .log("Foi prenchido a senha");

  cy.get("[data-test='login-button']", { log: false })
    .click({ log: false });

  cy.url().should("include", "/inventory", { log: false });
  cy.screenshot();
  cy.get('[data-test="inventory-item-sauce-labs-backpack-img"]', { log: false })
    .should("be.visible", { log: false })
    .should("have.attr", "src", "/static/media/sauce-backpack-1200x1500.0a0b85a3.jpg", { log: false });
})

Cypress.Commands.add('usuarioInvalido', () => {
  cy.visit('/', { log: false }).log('Acessou o site');
  cy.get('[data-test="username"]', { log: false })
    .type('Carlos', { log: false })
    .log("Foi prenchido o nome usuario");
  cy.get('[data-test="password"]', { log: false })
    .type("secret_sauce{enter}", { log: false })
    .log("Foi prenchido a senha e tentou logar no sistema");
  cy.screenshot();
});

Cypress.Commands.add('verificarItemMenu', (item) => {
  cy.get('#react-burger-menu-btn').click();
  cy.get('.bm-item-list').get('[class = "bm-item menu-item"]').as("itemMenu")
  switch (item) {
    case "All Items":
      cy.get('@itemMenu')      
      .first()
      .should('have.text', item);
      break;
    case "About":
      cy.get('@itemMenu')      
      .first()
      .next()
      .should('have.text', item);
      break;
    case "Logout":
      cy.get('@itemMenu')      
        .last()
        .prev()
        .should('have.text', item);
      break;
    case "Reset App State":
      cy.get('@itemMenu')      
        .last()
        .should('have.text', item);
      break;
  }


});