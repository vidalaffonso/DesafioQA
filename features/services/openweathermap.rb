module OpenWeatherMap
  include HTTParty
  base_uri CONFIG["base_uri"]
  format :json
  headers 'Content-Type': "application/json",
          'Accept': "application/vnd.tasksmanager.v2"
end
