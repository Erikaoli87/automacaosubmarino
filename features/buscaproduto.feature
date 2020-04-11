#language:pt

Funcionalidade: Compra de Produto Online
    Para que eu possa validar a compra de um produto em um loja online
    Sendo um cliente 
    Posso realizar a busca por diversos produtos
@ok
    Esquema do Cenario: Validar Produto no carrinho

        O cliente realiza a busca de um produto especifico
        e valida se a compra foi enviada para o carrinho de compras 
        
        Dado que <produto> é um celular 
        Quando eu realizo a busca por esse produto
        E escolho o modelo que desejo  
        E adiciono o produto no carrinho 
        Então devo ver o resumo do pedido de compra <texto>

        Exemplos:
            | produto                     | texto              |
            | "Samsung Galaxy S10 128GB"  | "Resumo do pedido" |
            | "Motorola One"              | "Resumo do pedido" |
            | "IPhone XR"                 | "Resumo do pedido" |

@validacao
    Esquema do Cenario: Busca por Produtos Inexistentes

        O cliente realiza a busca de um produto especifico
        mas não está realizando a pesquisa corretamente
        
        Dado que <produto> é um celular 
        Quando eu realizo a busca por esse produto
        Então verifico que a busca está exibindo a <mensagem>

        Exemplos:
            | produto           | mensagem                                          |
            | "Xingling"        | "Não encontramos nenhum resultado na sua busca."  |
            | "Siansumgs"       | "Não encontramos nenhum resultado na sua busca."  |
            | "Matorolaxonex"   | "Não encontramos nenhum resultado na sua busca."  |
