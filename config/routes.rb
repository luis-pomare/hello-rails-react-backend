Rails.application.routes.draw do
  get '/greetings', to: 'greetings#greetings_endpoint'
end
