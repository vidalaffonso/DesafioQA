class OpenWeatherMapStart < SitePrism::Page
  def listar_cidades
    $response = OpenWeatherMap.get("q=#{$LOADS["city"]}&appid=#{$LOADS["appid_valid"]}")
    raise "ERRO: Problema ao fazer GET na API:\nCodigo do erro: #{$response.code}\nDescrissão do erro: #{$response.body}" if $response.code != 200
    $response
  end

  def conversao
    $kelvin_atual = $response["main"]["temp"]
    $kelvin_min = $response["main"]["temp_min"]
    $kelvin_max = $response["main"]["temp_max"]
    $celsius_atual = $kelvin_atual - 273.15
    $celsius_min = $kelvin_min - 273.15
    $celsius_max = $kelvin_max - 273.15
    puts "Valor em kelvil: #{$response["main"]["temp"]}\nValor em kelvil convertido: #{$celsius_atual.floor}º Graus em Celsius"
    puts "Valor em kelvil minimo: #{$response["main"]["temp_min"]}\nValor em kelvil minimo convertido: #{$celsius_min.floor}º Graus em Celsius"
    puts "Valor em kelvil máximo: #{$response["main"]["temp_max"]}\nValor em kelvil máximo convertido: #{$celsius_max.floor}º Graus em Celsius"
  end

  def lat_long
    $response_lat_long = OpenWeatherMap.get("lat=-9.1333&lon=38.7167&appid=#{$LOADS["appid_valid"]}")
    raise "ERRO: Problema ao fazer GET na API:\nCodigo do erro: #{$response_lat_long.code}\nDescrissão do erro: #{$response_lat_long.body}" if $response_lat_long.code != 200
    $response_lat_long
  end

  def armazenar
    @main = $response_lat_long["weather"][0]["main"]
    # puts @main
    @visibility = $response_lat_long["visibility"]
    # puts @visibility
    puts "O valor da Main é igual: #{@main}"
    puts "O valor da visbility é igual: #{@visibility}"
  end

  def token_invalido
    $response_invalido = OpenWeatherMap.get("q=#{$LOADS["city"]}&appid=#{$LOADS["appid_invalid"]}")
  end
end
