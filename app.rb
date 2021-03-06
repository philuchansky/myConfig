require 'sinatra/base'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'

class MyConfig < Sinatra::Base
  enable :sessions
  register Sinatra::Flash
  helpers Sinatra::RedirectWithFlash
  ############### POST INDEX ###############

  get '/' do
    @posts = Post.all.order(id: :desc)
    erb :'post/index'
  end

  ############### NEW POST ###############

  get '/new' do
    erb :'post/new'
  end

  post '/new' do
    @post = Post.new(params[:post])
    if @post.save
      redirect '/', notice: 'New item added'
    else
      redirect '/new', error: 'Please add a title'
    end
  end

  ############### SINGLE POST ###############

  get '/:id' do
    @post = Post.find(params[:id])
    erb :'/post/single'
  end

  ############### EDIT POST ###############

  get '/:id/edit' do
    @post = Post.find(params[:id])
    erb :'post/edit'
  end

  put '/:id/edit' do
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect "/#{params[:id]}"
    else
      'error'
    end
  end

  ############### DELETE POST ###############

  get '/:id/delete' do
    @post = Post.find(params[:id])
    erb :'/post/delete'
  end

  get '/:id/delete/confirm' do
    @post = Post.find(params[:id])
    if @post.destroy
      redirect '/'
    else
      "Cannot Delete This Post!"
    end
  end


end