class UsersController < ApplicationController
    def index
        # render plain: "I'm in the index action"
        render json: params
    end

    def create
        render json: params
    end

end