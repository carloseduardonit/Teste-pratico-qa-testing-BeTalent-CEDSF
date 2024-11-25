describe("standard_user", () => {
    it("tests standard_user", () => {
      cy.viewport(1821, 809);
      cy.visit("www.saucedemo.com");
      cy.get('[data-test="username"]').type("standard_user");
      cy.get('[data-test="password"]').type("secret_sauce")
      cy.get("[data-test='login-credentials-container']").click();
      cy.get("[data-test='login-button']").click();
    });
  });