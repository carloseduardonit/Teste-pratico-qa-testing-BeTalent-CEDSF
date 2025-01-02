

describe('Funcionalidade: Logout', () => {    
    let botaoMenu ="#react-burger-menu-btn";
    let itemLogout = "#logout_sidebar_link";
    it('1.2.6.1 Logout com sucesso pelo menu', () => {
        cy.usuario();
        cy.get(botaoMenu).as('botaoMenu');
        cy.get('@botaoMenu').click();
        cy.get(itemLogout).click();
        cy.url().should('eq', "https://www.saucedemo.com/");
    });

    it('1.2.6.2 Menu não visível para utilizadores não autenticados', () => {
        cy.usuarioInvalido();
        cy.get(botaoMenu,{log: false})
        .should('not.exist',{log: false})
        .log('Foi verificado que Menu não existe!!');
    });

    it('1.2.6.3 Verificar existência da opção de logout no menu', () => {
        cy.usuario();
        cy.verificarItemMenu('Logout');
    });

});