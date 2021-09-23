class UsersController < ApplicationController

    def auth
        render json: @current_user
    end

    def login
        byebug
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            token = JWT.encode({ user_id: user.id }, '$3cr3t', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    def signup
        user = User.create(name: params[:name], password: params[:password])
        if user.valid?
            user && user.authenticate(params[:password])
            token = JWT.encode({ user_id: user.id }, '$3cr3t', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }
        else
            render json: { errors: users.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

end
