Funcionalidade: Realizar Cadastro no site da Dotz
      Eu como usuário de validar a parte de cadastro da Dotz

  @test
  Cenario: Realizar um cadatro com sucesso
    Dado que acesso a página de cadastro
    Quando eu submeto o seguinte fommulário de cadastro e aceite os termos
      | CPF         | celular     | codigo | Nome Completo | Data de Nascimento | E-mail                  | Senha |
      | 350912808xx | 119988864xx | 2065xx | Vidal Affonso | 04/04/1987         | vidalneto1987@gmail.com | xxxxx |
      E recebo a mensagem que "O cadatro foi feito com sucesso"


  Esquema do Cenario: Tentativa de Cadastro CPF
    Dado que acesso a página de cadastro
    Quando submemto CPF e CNPJ inválidos
    Então o botão "Contunuar não é habilitado"

    Exemplos:
      | infomrme seu CPF e CNPJ | Botão                                          |
      | 34416857846             | não é habilitado e fical com sinal de proibido |
      | 61360574000199          | não é habilitado e fical com sinal de proibido |
