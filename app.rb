class MyConfig < Sinatra::Base
  get '/' do
    @posts = Post.all
    erb :'post/index'
  end

  get '/new' do
    erb :'post/new'
  end
end