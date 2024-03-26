class ProdutosPage {
    visitarUrl(url){
        cy.visit('produtos')
    }

    buscarProduto(nomeProduto){
        cy.get('[name="s"]').eq(1).type(nomeProduto);
        cy.get('.button-search').eq(1).click();
    }

    buscarProdutoLista(nomeProduto){
        cy.get('#content')
        .contains(nomeProduto)
        .click()
    }

    visitarProduto(produto){

    }

    addProdutoCarrinho(){

    }
}

export default new ProdutosPage();