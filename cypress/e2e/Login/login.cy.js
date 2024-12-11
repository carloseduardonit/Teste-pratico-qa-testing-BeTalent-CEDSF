describe("Login functionality for standard_user", () => {
  let id
  it("logs in with valid credentials", () => {
    //cy.viewport(1821, 809);
    cy.visit('/');
    cy.get('[data-test="username"]').type('standard_user');
    cy.get('[data-test="password"]').type('secret_sauce');
    cy.get("[data-test='login-button']").click();
    cy.server();
    // Validation: Check if the user is redirected to the inventory page
    cy.url().should("include", "/inventory");
  });
});
