describe("standard_user", () => {
    it("tests standard_user", () => {
      cy.viewport(1821, 809);
      cy.visit("https://www.saucedemo.com/");
      cy.get('');
      cy.get("[data-test='login-credentials-container']").click();
      cy.get("[data-test='login-button']").click();
    });
  });