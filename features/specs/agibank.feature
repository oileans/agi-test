# language: pt

Funcionalidade: Barra de pesquisa

  Esquema do Cenário: Validar funcionalidade - Barra de pesquisa
    Dado que estou no blog Agi
    Quando efetuar a busca pelo termo "<termo>"
    Entao a busca deverá exibir resultados conforme esperado

    Exemplos:
      | termo                                                               |
      | Inscrições abertas para patrocínios de projetos culturais e sociais |
      | Agibank está com 40 vagas abertas em Campinas                       |