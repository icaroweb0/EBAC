            #language pt-br

            Funcionalidade: Realizar login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que acesse a página de login da EBAC-SHOP

            Cenario: Autenticação Válida
            Quando inserir o login "carlos_stb2024@" e a senha "123456789"
            Então o login deve ser bem sucedido e logo após ser direcionado para a tela de checkout.

            Esquema do Cenário: Autenticação inválida
            Quando inserir o login <usuario> e a <senha> inválidos
            Então deve ser exibido a <mensagem>

            Exemplos:
            | usuario                    | senha            | mensagem                     |
            | "charlie_bit_me@teste.com" | "vaca@marela123" | “Usuário ou senha inválidos” |
            | "charles@gmaill.com"       | "56898546"       | “Usuário ou senha inválidos” |
            | "juninloko_sk8@teste.com"  | "sk8tododia"     | “Usuário ou senha inválidos” |
            | "joanadark68@teste.com"    | "naosou_brux@"   | “Usuário ou senha inválidos” |