class GreetingsController < ApplicationController
  def greetings_endpoint
    greetings = Greeting.all
    @greeting = greetings.sample
    render json: @greeting
  end
end
