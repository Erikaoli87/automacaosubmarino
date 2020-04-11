Dado("que {string} é um celular") do |produto|
    @busca_page.go
    @busca_page.campo_pesquisa(produto)
  end
  

  Quando("eu realizo a busca por esse produto") do
    @busca_page.clicar_lupa
  end
  
  Quando("escolho o modelo que desejo") do
    @busca_page.selecionar_produto
  end
 
  Quando("adiciono o produto no carrinho") do
    @busca_page.add_carrinho
  end
  
  Então("devo ver o resumo do pedido de compra {string}") do |texto|
    expect(@busca_page.resumo_pedido).to eql texto
  end

  Então("verifico que a busca está exibindo a {string}") do |mensagem|
    expect(@busca_page.falha).to have_content mensagem
  end