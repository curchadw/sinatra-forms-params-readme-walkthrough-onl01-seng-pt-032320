require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post '/food' do
    @food = params[:favorite_food]
    @name = params[:name]

    "My name is #{@name}, and I love #{@food}."
  end

end