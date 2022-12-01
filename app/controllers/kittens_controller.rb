class KittensController < ApplicationController
    
    def index
        @kittens = Kitten.all
    end

    def show
        @kitten = Kitten.find(params[:id])
    end

    def new
        @kitten = Kitten.new
    end

    def create
        @kitten = Kitten.new(kitten_params)
        
        if @kitten.save
            flash[:success] = "Kitten Created!"
            redirect_to @kitten
        else
            flash.now[:error] = "Kitten details are invalid"
            render :new, status: :unprocessable_entity
        end
    
    end 


    def edit
        @kitten = Kitten.find(params[:id])
    end

    def update
        @kitten = Kitten.find(params[:id])

        if @kitten.update(kitten_params)
            redirect_to @kitten
        else
            flash.now[:error] = "Kitten details are invalid"
            render :new, status: :unprocessable_entity
        end
    end

    def delete
    end


    private

    def kitten_params
        params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end

end
