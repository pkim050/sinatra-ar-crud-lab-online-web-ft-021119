
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  #Create
  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    temp = Article.create(params)
    #binding.pry
    redirect '/articles/#{temp.id}'
  end

  #Read
  get '/articles' do
    @articles = Article.all

    erb :index
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])

    erb :show
  end

  #Update
  get '/articles/:id/edit' do
    erb :edit
  end

  patch '/articles/:id' do

  end

  #Delete
  delete '/articles/:id' do

  end
end
