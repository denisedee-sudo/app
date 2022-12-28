class ToysController < ApplicationController
  before_action :require_admin, only: [:index, :new, :create, :update, :show, :edit, :destroy]
        def index
          @toys = Toy.all
        end
      
        def show
          @toy = Toy.find(params[:id])
        end
      
        def new
          @toy = Toy.new
        end
        
        def create
          @toy = Toy.new(toy_params)
          @toy.user = current_user
          @toy.image.attach(params[:toy][:image])
          if @toy.save
            redirect_to @toy
          else
            render "new"
          end
        end
      
        def edit
          @toy = Toy.find(params[:id])
        end
      
        def update
          @toy = Toy.find(params[:id])
          @toy.update(toy_params)
          if @toy.save
            flash[:success] = "This toy was successfully updated."
            redirect_to "/toys"
          else
            render "new"
          end
        end
      
        def destroy
          @toy = Toy.find(params[:id])
          @toy.destroy
          flash[:success] = "This toy was successfully removed."
        end

        private
        def toy_params
          params.require(:toy).permit(:name, :description, :image, :user)
        end
end
