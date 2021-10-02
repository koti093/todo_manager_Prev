class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def index
      render plain: Users.all.map { |users| users.to_pleasant_string }.join("\n")
    end
  
    def create
      name = params[:name]
      email = params[:email]
      password = params[:password]
      new_user = Users.create(
        name: name,
        email: email,
        password: password,
      )
      response_text = "Hey new user is created with the id #{new_user.id}"
      render plain: response_text
    end
  
    def update
      id = params[:id]
      password = params[:password]
      users = Users.find(id)
      users.password = password
      users.save!
      render plain: " Users password updated to #{password}"
    end
  
    def login
      email = params[:email]
      password = params[:password]
      user = Users.find_by(email: email, password: password)
      render plain: user.present?
    end
  
    def show
      id = params[:id]
      user = Users.find(id)
      render plain: user.to_pleasant_string
    end
  end