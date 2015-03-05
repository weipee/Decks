require 'byebug'

get '/desk/:id' do
  @desk = Desk.find_by_id(param[:id])
  @question = Card.where (desk_id: params[:id])
  @number = session [:number]
  if @question  == nil
    erb :finish
  else
    erb :question
  end
end






get '/posts/new' do
  erb :'posts/new'
end

post '/posts' do
  temp = []
  a = Post.create(title: params[:title], body: params[:body])
  temp = params[:tag].split(",")
  p temp
  p a.tags
    temp.each do |t|
      a.tags << Tag.find_or_create_by(name: t)
    end
    redirect "/posts/#{a.id}"
end

get '/posts/:id' do
  @current_post = Post.find(params[:id])

  erb :'posts/show'
end

get '/posts/:id/edit' do
  @current_post = Post.find(params[:id])
  erb :'posts/edit'
end

put '/posts/:id' do
  @current_post = Post.update(params[:id], :title => params[:title], :body => params[:body])
  temp = []
  temp = params[:tag].split(",")
    temp.each do |t|
      @current_post.tags << Tag.find_or_create_by(name: t)
    end
  erb :'posts/show'
end

delete '/posts/:id' do
  @post = Post.find params[:id]
  @post.destroy
  erb :'posts/delete'
end


