class CandiesController < ApplicationController

    def index
        # if params[:sort_by] == "name"
        #     @candies = Candy.order("name") 
        # elsif params[:sort_by] == "calories"
        #     @candies = Candy.order("calories")
        # else 
        #     @candies = Candy.all
        # end  
    # column = params[:sort_by] # => name/calories/nil
    @candies = Candy.order(params[:sort_by])

    end

    def show
        @candy = Candy.find(params[:id])
    end

    def new
        @candy = Candy.new
        render :new
    end

    def create
        candy = Candy.create(name: params[:candy][:name],
                     wrapper_color: params[:candy][:wrapper_color],
                     calories: params[:candy][:calories],
                     has_nuts: params[:candy][:has_nuts])
    
        redirect_to candy_path(candy.id)
    end

    def edit
        @candy = Candy.find(params[:id])
    end

    def update
        candy = Candy.find(params[:id])
        candy.update(name: params[:candy][:name],
                     wrapper_color: params[:candy][:wrapper_color],
                     calories: params[:candy][:calories],
                     has_nuts: params[:candy][:has_nuts])
        redirect_to candy_path(candy.id)
    end

end

