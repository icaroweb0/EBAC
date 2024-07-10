            #language pt-br

            Funcionalidade: Finalizar Compra
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que tenha produtos no carrinho e clique em "COMPRAR"

            Esquema do Cenário: Dados de faturamento inválidos
            Quando inserir o nome <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email> válidos
            Então deve ser exibido a <mensagem>

            Exemplos:
            | nome  | sobrenome | pais    | endereco   | cidade    | cep       | telefone  | email             | mensagem                                                           |
            | João  | Silva     | Brasil  | Rua A, 123 | São Paulo | 01234-567 | 987654321 | joao-email.com.br | "Formato de email inválido, por favor, forneça um email válido!"   |
            | Maria | Santos    | " "     | " "        | Lisboa    | 12345-678 | 123456789 | maria@email.com   | "Por favor, preencha todos os campos obrigatórios marcados com *." |
            | José  | Lima      | Espanha | " "        | ""        | 98765-432 | ""        | jose--email.com   | "Por favor, preencha todos os campos obrigatórios marcados com *." |


            Esquema do Cenário: Dados de faturamento válidos
            Quando inserir o nome <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email> válidos
            Então deve ser exibido a <mensagem>

            Exemplos:
            | nome  | sobrenome | pais    | endereco   | cidade    | cep       | telefone  | email             | mensagem                       |
            | João  | Silva     | Brasil  | Rua A, 123 | São Paulo | 01234-567 | 987654321 | joao@email.com.br | "Login realizado com sucesso!" |
            | Maria | Santos    | Maria   | Santos     | Lisboa    | 12345-678 | 123456789 | maria@email.com   | "Login realizado com sucesso!" |
            | José  | Lima      | Espanha | Rua B, 209 | Valença   | 98765-432 | 123456789 | jose@email.com    | "Login realizado com sucesso!" |

