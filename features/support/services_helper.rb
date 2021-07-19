# Pegando todos os arquivos que estao dentro do caminho a baixo
Dir[File.join(File.dirname(__FILE__), "../start_services/*/*.rb")].each { |file| require file }

# Depois que pegar os arquivos com (_start.rb) todos as suas variaveis
module Page
  def open_weather
    open_weather ||= OpenWeatherMapStart.new
  end
end
