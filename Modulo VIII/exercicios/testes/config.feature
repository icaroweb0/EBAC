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



Esses são alguns problemas identificados em relação à acessibilidade e legibilidade do seu aplicativo:

1. ARIA
   Elementos com um atributo ARIA [role] que exigem que os filhos contenham um [role] específico estão faltando alguns ou todos os filhos necessários. Isso indica oportunidades para melhorar o uso do ARIA em seu aplicativo, o que pode aprimorar a experiência para usuários de tecnologia assistiva, como leitores de tela.

2. NOMES E RÓTULOS
   Botões não têm um nome acessível; Links não têm um nome discernível. Essas são oportunidades para melhorar a semântica dos controles em seu aplicativo, o que pode aprimorar a experiência para usuários de tecnologia assistiva, como leitores de tela.

3. CONTRASTE
   As cores de fundo e de primeiro plano não têm uma taxa de contraste suficiente. Isso indica oportunidades para melhorar a legibilidade do seu conteúdo.

4. TABELAS E LISTAS
   Os itens da lista (<li>) não estão contidos em elementos pai <ul>, <ol> ou <menu>. Isso sugere que há problemas de marcação em suas listas, o que pode afetar negativamente a acessibilidade e a compreensão do conteúdo pelos usuários.