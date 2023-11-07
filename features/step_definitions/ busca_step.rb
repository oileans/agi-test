Dado("que estou no blog Agi") do
  visit '/'
  @busca_page = Busca.new
end

Quando('efetuar a busca pelo termo {string}') do |termo|
  @termo = termo
  @busca_page.buscar_por_termo(@termo)

end

Entao("a busca deverá exibir resultados conforme esperado") do
  expect(@busca_page.get_text).to include @termo
end

