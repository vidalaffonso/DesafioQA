Quando("é informado a cidade de origem") do
  @response = open_weather.listar_cidades
end

Então("devo receber o status code {int}") do |status_code|
  expect(@response.code).to eq status_code
end

Então("recebo a temperatura convertida de kelvin para celsius") do
  @conversao = open_weather.conversao
end

Quando("é informado a latitude e longitude") do
  @response = open_weather.lat_long
  #log @response
end

Então("devo armazenar o valor do campo wealther e visibility") do
  @response = open_weather.armazenar
end

Quando("é informado a cidade de origem e token inválido") do
  @response = open_weather.token_invalido
end

Então("devo receber o status cod {int} e message {string}") do |cod, message|
  @response = open_weather.token_invalido
  expect(@response["cod"]).to eq cod
  expect(@response["message"]).to eq message
end
