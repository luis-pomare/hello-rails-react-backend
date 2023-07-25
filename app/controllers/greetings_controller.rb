class GreetingsController < ApplicationController
  def greetings_endpoint
    greetings = Greeting.all
    @greeting = greetings.sample
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: @greeting
  end

  def create
    greeting = Greeting.new(greeting: params[:greeting])

    if greeting.save
      render json: greeting, status: :created
    else
      render json: greeting.errors, status: :unprocessable_entity
    end
  end
end
