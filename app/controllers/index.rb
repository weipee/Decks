enable :sessions

get '/' do
  @posts = Post.all.reverse
  @tags = Tag.all
  erb :index
end

