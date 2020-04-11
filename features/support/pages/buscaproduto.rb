 class BuscaPage
      include Capybara::DSL

      def go
         visit "/"
       end

      def campo_pesquisa(produto)
         find('#h_search-input').set produto
      end

      def clicar_lupa
         find("#h_search-btn").click
      end

      def selecionar_produto
         find(:xpath, '//*[@id="content-middle"]/div[6]/div/div/div/div[1]/div[1]/div/div[2]/a/section/div[2]/div[1]/h2').click
      end

      def add_carrinho
         find("#btn-buy").click
         find("#btn-continue").click
      end

      def resumo_pedido
         find(".summary-title").text
      end

      def falha
         find(".EmptyPage__Content-sc-1u8xkxt-0").text
      end

   end