class UsersController < ApplicationController

  def new
    @user = User.new
  end

  # /users/new
  get '/users/new' do
    erb :new
  end

  # create
  post '/users' do
    @user = User.create(params)
    @user.save
    redirect to "/#{@user.id}"
  end

  # index
  get '/users' do
    @users = User.all
    erb :index
  end

  # show
  get '/users/:id' do
    @user = User.find(params)
    erb :show
  end

  # edit
  get '/users/:id/edit' do
    @user = User.find(params)
    erb :edit
  end

  # update
  post '/users/:id' do
    @user = User.find(params)
    @user.update(new_params)
    @user.save
    redirect to "/#{@pet.id}"
  end

  # destroy
  delete '/users/:id/delete' do
    @user = User.find(params)
    @user.delete
    redirect to "/users"
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
