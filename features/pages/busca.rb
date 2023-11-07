class Busca < SitePrism::Page
  element :lupa_pesquisa, 'button[id=search-open]'
  element :input_pesquisa, 'input[type=search]'
  element :btn_pesquisar, 'input[type=submit]'
  element :title_resultado, 'h1[class=archive-title]'
  element :subtitle_resultado, 'h2[class=entry-title]'

  def buscar_por_termo(termo)
    begin
      lupa_pesquisa.click
      input_pesquisa.send_keys(termo)
      btn_pesquisar.click
    rescue StandardError => e
      puts "Ocorreu um erro: #{e.message}"
    end
  end

  def get_text
    begin
      subtitle_resultado.text
    rescue StandardError => e
      puts "Não foi possivel capturar o texto do elemento, favor verificar.: #{e.message}"
    end
  end
end