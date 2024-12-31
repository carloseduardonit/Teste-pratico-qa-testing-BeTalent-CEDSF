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
  
    cy.visit('/');
    
    cy.get('[data-test="username"]').type("standard_user"); 
    cy.get('[data-test="password"]').type("secret_sauce"); 

    cy.get("[data-test='login-button']").click();
    
    cy.url().should("include", "/inventory");
    cy.get('[data-test="inventory-item-sauce-labs-backpack-img"]')
      .should("be.visible")
      .should("have.attr", "src", "/static/media/sauce-backpack-1200x1500.0a0b85a3.jpg");
})