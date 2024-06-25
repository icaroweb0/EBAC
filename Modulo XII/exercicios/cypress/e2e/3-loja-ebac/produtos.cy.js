/// <reference types="cypress"/>
import produtosPage from "../../support/page-objects/produtos.page";

describe('Funcionalidade: Produtos', () => {
    beforeEach(() => {
        produtosPage.visitarUrl();
    });

    it('Deve selecionar um produto da lista', () => {
        produtosPage.buscarProdutoLista('Aether Gym Pant')
        
        cy.get('#tab-title-description > a').should('contain', 'Descrição')
            
    });

    it('Deve buscar um produto com sucesso', () => {
        let produto = 'Circe Hooded Ice Fleece'
        produtosPage.buscarProduto(produto);
        cy.get('.product_title').should('contain', produto);

    });

    it('Deve visitar a página do produto', () => {
        let nomeProduto = 'Ariel Roll Sleeve Sweatshirt'
        produtosPage.visitarProduto(nomeProduto);
        cy.get('.product_title').should('contain', nomeProduto)
    });

    it('Deve adicionar produto ao carrinho', () => {
        let qtd = 2, nome = 'Abominable Hoodie';

        if(qtd == 1){
                var msgSucesso = `“${nome}” foi adicionado no seu carrinho`;
            } else {
                var msgSucesso =  `${qtd} × “${nome}” foram adicionados no seu carrinho.`;                            
        }        
        produtosPage.buscarProduto(nome);
        produtosPage.addProdutoCarrinho('L', 'Blue', qtd);
        cy.get('.woocommerce-message').should('contain',msgSucesso);
    });

    it.only('Deve adicionar produto ao carrinho usando massa de dados', () => {
        cy.fixture('produtos').then(dados => {
    
            dados.forEach(element => {
                if(dados.quantidade == 1){
                        var msgSucesso = `“${element.nomeProduto}” foi adicionado no seu carrinho`;
                    } else {
                        var msgSucesso =  `${element.quantidade} × “${element.nomeProduto}” foram adicionados no seu carrinho.`;                            
                }        
                produtosPage.buscarProduto(element.nomeProduto);

                produtosPage.addProdutoCarrinho(element.tamanho, element.cor, element.quantidade);

                cy.get('.woocommerce-message').should('contain',msgSucesso);
                
            });
        })
    });
});