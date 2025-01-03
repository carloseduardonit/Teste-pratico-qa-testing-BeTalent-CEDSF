// author: Carlos Eduardo
// github: https://github.com/carloseduardonit/Teste-pratico-qa-testing-BeTalent-CEDSF
// Teste de Ordenação de Produtos

describe('Funcionalidade: Ordenar', () => {

   let produto = "";

    beforeEach(() => {
        cy.usuario();
    });
    it('1.2.2.1 Ordenar produtos por preço ascendente', () => {
        produto  = 'Sauce Labs Fleece Jacket';
        cy.get('[data-test="product-sort-container"]').select("Price (high to low)")

    });

    it('1.2.2.2 Ordenar produtos por preço descendente', () => {
        produto ="Sauce Labs Onesie";
        cy.get('[data-test="product-sort-container"]').select("Price (low to high)")
        
    });

    it('1.2.2.3 Ordenar produtos por nome de A a Z', () => {
        produto = "Sauce Labs Backpack",
        cy.get('[data-test="product-sort-container"]').select("Name (A to Z)")
    });

    it('1.2.2.4 Ordenar produtos por nome de Z a A', () => {
        produto = "Test.allTheThings() T-Shirt (Red)",
        cy.get('[data-test="product-sort-container"]').select("Name (Z to A)")
    });
  afterEach(() => {
    procurarPrimeiroProduto(produto)
  });


});

function procurarPrimeiroProduto(produto) {
    cy.get(':nth-child(1) > [data-test="inventory-item-description"]')
        .children(".inventory_item_label")
        .children("a")
        .children(".inventory_item_name")
        .should("have.text",produto);
}