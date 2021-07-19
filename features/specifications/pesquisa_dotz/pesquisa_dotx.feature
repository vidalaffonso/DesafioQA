Funcionalidade: Realizar pesquisa no site da Dotz
      Eu como usuário de realizar pesquisano site da Dotz


  Cenario: Realizar pesquisa com sucesso
    Dado que acesso a home page da Dotz
    Quando eu informo um nome da "Nike" na pesquisa
    Então devo visualizar um total de 36 resultados


  Esquema do Cenario: Tentativa de Pesquisa com dado incorreto
    Dado que acesso a home page da Dotz
    Quando eu informo um nome da "Noke" na pesquisa
    Então devo visualizar uma mensagem "Nao foram encontrados produtos com esse nome!"