require 'sinatra'
require "sinatra/reloader" if development?


get '/' do
    "Hello World"
  end

  get '/secret' do
      "This is a secret message"
  end

  get '/random-cat' do
    @name = ["Jeff", "Larry", "Steve"].sample
    erb(:index)

  end

  post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
  end

  get '/cat-form' do
    erb :cat_form
  end
  