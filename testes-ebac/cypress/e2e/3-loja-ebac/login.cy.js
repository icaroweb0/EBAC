///<reference types="cypress"/>

describe('Funcionalidade: Login', () => {
    it('Deve fazer login com sucesso ', () => {
        cy.visit('http://lojaebac.ebaconline.art.br/minha-conta/')
        cy.get('#username').type('teste-i01@teste.com')
        cy.get('#password').type('@123456789')
        cy.get('.woocommerce-form > .button').click()

        cy.get('.woocommerce-MyAccount-content > :nth-child(2)').should('contain', 'Olá, teste-i01 (não é teste-i01? Sair)')
    })
})