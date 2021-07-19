#language: pt

Funcionalidade: Consultas da API de Tempo
      Eu como usuário gostaria de realizar consultas na API de Tempo

@test
  Cenario: Validar a busca pela cidade de origem
    Quando  é informado a cidade de origem
    Então devo receber o status code 200
      E recebo a temperatura convertida de kelvin para celsius
@temp
  Cenario: Validar a busca pela lat e log da cidada
    Quando  é informado a latitude e longitude
    Então devo receber o status code 200
      E devo armazenar o valor do campo wealther e visibility
@token_invalido
  Cenario: Validar a busca pela cidade de origem com token inválido
    Quando  é informado a cidade de origem e token inválido 
    Então devo receber o status cod 401 e message "Invalid API key. Please see http://openweathermap.org/faq#error401 for more info."