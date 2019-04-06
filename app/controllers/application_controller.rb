
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
    binding.pry
    erb :new
  end

  post '/articles' do
    Article.create(params)
    redirect '/articles'
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
