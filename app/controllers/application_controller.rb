require_relative '../../config/environment'
class ApplicationController < Sinatra::Base

  configure do
      set :views, 'app/views'
    end


    ##Create
    get '/dogs/new' do
      erb :new
    end

    post '/dogs' do
      #I have 0 validations so I am going to do this the lazy way for now.
      @dog = Dog.create(params[:dog])
      redirect "/dogs"
    end

    ##Read
    get '/' do
      erb :index
    end

    get '/dogs' do
      erb :index
    end

    get '/dogs/:id' do
      @dog = Dog.find(params[:id])
      erb :show
    end

    ##Update

    get '/dogs/:id/edit' do
      @dog = Dog.find(params[:id])
      erb :edit
    end

    patch '/dogs/:id' do
      @dog = Dog.find(params[:id])
      @dog.update!(params[:dog])
      redirect "/dogs/#{@dog.id}"
    end

    ##Destroy

    delete '/dogs/:id/delete' do
      @dog = Dog.find(params[:id])
      @dog.delete
      redirect "/dogs"
    end


end
