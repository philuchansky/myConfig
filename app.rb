class MyConfig < Sinatra::Base
  get '/' do
    @posts = Post.all
    erb :'post/index'
  end
end