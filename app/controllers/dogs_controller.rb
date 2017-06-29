class DogsController < ApplicationController


  ##Create
  get '/dogs/new' do
    erb :new
  end

  post '/dogs' do

  end

  ##Read
  get '/' do
    erb :index
  end

  get '/dogs' do
    erb :index
  end

  get '/dogs' do

  end
end
