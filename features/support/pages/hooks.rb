Before do
    @busca_page = BuscaPage.new
  
    page.current_window.resize_to(1280, 720)
end

  
After do |scenario|
    nome_cenario = scenario.name.tr(' ', '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '_')
    screenshot = "log/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')
end
  