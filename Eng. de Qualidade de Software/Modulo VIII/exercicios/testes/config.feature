#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Escolher a quantidade
Para depois inserir no carrinho

Contexto: Dado que acesse a EBAC-SHOP

Cenario: Campos obrigatórios preenchidos
Quando seleciono uma cor, um tamanho e uma quantidade válidos
Então devo ver a configuração escolhida e o botão "COMPRAR" habilitado.


Cenario: Campos obrigatórios não preenchidos
Quando não seleciono uma cor ou um tamanho ou não defino a quantidade.
Então o botão "COMPRAR" deve ser desabilitado 
E exibir a mensagem "Por favor, preencha todos os campos obrigatórios"


Cenario: Quantidade de produtos inválida
Quando tento adicionar mais de 10 produtos ao carrinho
Então devo ver uma mensagem indicando que excedi o limite de produtos por venda
E o botão "COMPRAR" deve permanecer desabilitado.


Cenario: Limpar configurações
Quando seleciono uma cor, um tamanho e uma quantidade válidos
E clico no botão "Limpar"
Então todas as minhas seleções devem ser desfeitas e botão "COMPRAR" se tornar desabilitado
